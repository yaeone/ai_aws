import boto3, json, math   # boto3: AWS SDK, json: 출력용, math: cosine 계산용

print("\n----Defining a tool and sending a message that will make Claude ask for tool use----\n")
# (1) 툴 정의 및 Claude에게 도구 사용이 필요한 질문을 보내는 단계

session = boto3.Session()                              # AWS 인증 및 세션 생성
bedrock = session.client(service_name='bedrock-runtime') # Bedrock Runtime 클라이언트 생성

# Claude에게 제공할 "코사인" 계산 도구 정의 (ToolUse API 사양에 맞춤)
tool_list = [
    {
        "toolSpec": {
            "name": "cosine",                         # 도구 이름(코사인)
            "description": "Calculate the cosine of x.",   # 도구 설명
            "inputSchema": {                          # 입력 데이터 구조(JSON Schema)
                "json": {
                    "type": "object",
                    "properties": {
                        "x": {                       # 입력 파라미터: x (실수형)
                            "type": "number",
                            "description": "The number to pass to the function."
                        }
                    },
                    "required": ["x"]                # x 파라미터 필수
                }
            }
        }
    }
]

message_list = []  # 전체 대화 메시지 내역 저장

# 첫 사용자 질문 메시지(코사인 계산 요청)
initial_message = {
    "role": "user",
    "content": [
        { "text": "7의 코사인은 무엇인가요?" }    # Claude가 이 질문에 도구 사용이 필요하다고 판단
    ],
}
message_list.append(initial_message)

# Claude 3 Sonnet에 메시지, 시스템 프롬프트, 도구 사양, 생성 옵션 전달 (ToolUse 세팅)
response = bedrock.converse(
    modelId="anthropic.claude-3-sonnet-20240229-v1:0",        # 사용할 LLM
    system=[{"text": "반드시 매칭되는 도구만 사용해서 계산해야 합니다. 도구 사용이 불가능할 경우, 추정하지 말고 모른다고 답하세요."}],
    # 시스템 프롬프트: 반드시 도구만 써서 답하고, 도구 없으면 "모른다"라고 답하라는 지시
    messages=message_list,                                     # 메시지(질문)
    inferenceConfig={                                          # 생성 옵션
        "maxTokens": 2000,
        "temperature": 0
    },
    toolConfig={
        "tools": tool_list                                     # 사용할 툴(코사인)
    },
)

response_message = response['output']['message']               # Claude 응답 메시지 추출
print(json.dumps(response_message, indent=4, ensure_ascii=False)) # 응답(JSON pretty) 출력
message_list.append(response_message)                          # 메시지 내역에 추가

print("\n----Calling a function based on the toolUse content block.----\n")
# (2) Claude가 도구 호출(toolUse)을 요청한 경우 실제로 해당 함수 실행

response_content_blocks = response_message['content']          # Claude 응답 content 블록(여러 개 가능)

for content_block in response_content_blocks:
    if 'toolUse' in content_block:                             # toolUse 블록이 있으면(도구 사용 요청)
        tool_use_block = content_block['toolUse']
        tool_use_name = tool_use_block['name']
        
        print(f"Using tool {tool_use_name}")
        
        if tool_use_name == 'cosine':                          # 이름이 "cosine"인 경우
            tool_result_value = math.cos(tool_use_block['input']['x'])   # x값에 대해 실제 코사인 계산
            print(tool_result_value)                           # 계산 결과 출력
            
    elif 'text' in content_block:                              # 일반 텍스트 응답이 있을 경우(설명 등)
        print(content_block['text'])

print("\n----Passing the tool result back to Claude----\n")
# (3) 도구 실행 결과(toolResult)를 Claude에 다시 전달하여, 최종 응답을 받는 단계

follow_up_content_blocks = []                                  # Claude에 보낼 toolResult 블록 저장

for content_block in response_content_blocks:
    if 'toolUse' in content_block:
        tool_use_block = content_block['toolUse']
        tool_use_name = tool_use_block['name']
        
        if tool_use_name == 'cosine':
            tool_result_value = math.cos(tool_use_block['input']['x'])
            
            # toolUseId를 그대로 넘겨야 Claude가 도구 호출과 결과를 연결함
            follow_up_content_blocks.append({
                "toolResult": {
                    "toolUseId": tool_use_block['toolUseId'],
                    "content": [
                        {
                            "json": {
                                "result": tool_result_value     # 계산 결과를 json 값으로 전달
                            }
                        }
                    ]
                }
            })

if len(follow_up_content_blocks) > 0:
    # toolResult가 있을 경우 Claude에게 후속 메시지로 전달
    follow_up_message = {
        "role": "user",
        "content": follow_up_content_blocks,   # toolResult 포함
    }
    
    message_list.append(follow_up_message)     # 메시지 내역에 추가

    response = bedrock.converse(
        modelId="anthropic.claude-3-sonnet-20240229-v1:0",
        system=[{"text":"반드시 매칭되는 도구만 사용해서 계산해야 합니다. 도구 사용이 불가능할 경우, 추정하지 말고 모른다고 답하세요."}],
        messages=message_list,
        inferenceConfig={
            "maxTokens": 2000,
            "temperature": 0
        },
        toolConfig={
            "tools": tool_list
        }
    )
    
    response_message = response['output']['message']         # 최종 Claude 응답 추출
    message_list.append(response_message)
    print(json.dumps(message_list, indent=4, ensure_ascii=False))  # 전체 대화 내역 출력


print("\n----Error handling - letting Claude know that tool use failed----\n")
# (4) 도구 실행이 실패했을 때(예: 함수 없음, 에러 발생 등) Claude에게 에러 결과를 명시적으로 전달

del message_list[-2:]   # 마지막 follow-up 요청 및 응답(성공 결과) 삭제 → 실패 처리 시나리오 재현

# toolUse 블록(도구 호출 요청) 찾아내기
content_block = next((block for block in response_content_blocks if 'toolUse' in block), None)

if content_block:
    tool_use_block = content_block['toolUse']
    
    # 도구 실패(toolResult) 메시지: status "error"와 텍스트 에러 메시지 포함
    error_tool_result = {
        "toolResult": {
            "toolUseId": tool_use_block['toolUseId'],
            "content": [
                {
                    "text": "유효하지 않은 함수: cosine"    # 에러 설명 메시지
                }
            ],
            "status": "error"                               # 실패 상태 명시
        }
    }
    
    follow_up_message = {
        "role": "user",
        "content": [error_tool_result],
    }
    
    message_list.append(follow_up_message)
    
    response = bedrock.converse(
        modelId="anthropic.claude-3-sonnet-20240229-v1:0",
        system=[{"text":"반드시 매칭되는 도구만 사용해서 계산해야 합니다. 도구 사용이 불가능할 경우, 추정하지 말고 모른다고 답하세요."}],
        messages=message_list,
        inferenceConfig={
            "maxTokens": 2000,
            "temperature": 0
        },
        toolConfig={
            "tools": tool_list
        }
    )
    
    response_message = response['output']['message']
    print(json.dumps(response_message, indent=4, ensure_ascii=False))
    message_list.append(response_message)
