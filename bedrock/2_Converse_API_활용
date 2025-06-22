## Amazon Bedrock Converse API
## Amazon Bedrock을 사용하여 대규모 언어 모델(LLM)에 액세스하는 일관된 방법을 제공
## 이전에는 InvokeModel API를 사용하면 각 모델 제공업체마다 다른 JSON 요청 및 응답 구조를 사용, 모든 대규모 언어 모델에서 요청 및 응답에 단일 형식을 사용
## 텍스트 생성 모델만 지원, 임베딩 모델과 이미지 생성 모델에는 여전히 InvokeModel이 필요

import boto3, json  # boto3: AWS SDK for Python / json: JSON 데이터 입출력용 표준 라이브러리

print("\n----A basic call to the Converse API----\n")
# (1) AWS Bedrock Converse API를 이용한 기본 대화 예제 시작

session = boto3.Session()  # boto3 세션 생성 (AWS 인증 정보 및 리전 포함)
bedrock = session.client(service_name='bedrock-runtime')  # Bedrock Runtime 클라이언트 객체 생성

message_list = []  # 대화 내역(메시지 목록) 저장용 리스트 생성

# 첫 사용자 메시지(프롬프트) 구성
initial_message = {
    "role": "user",         # 발화자 역할: 'user'(사용자)
    "content": [
        { "text": "오늘 하루 어떠셨나요?" }   # 실제 메시지(텍스트)
    ],
}
message_list.append(initial_message)  # 메시지 리스트에 첫 메시지 추가

# Bedrock Converse API 호출: Claude 3 Sonnet 모델에 대화 메시지 전달
response = bedrock.converse(
    modelId="anthropic.claude-3-sonnet-20240229-v1:0",  # 사용할 Anthropic Claude 3 Sonnet 모델 ID
    messages=message_list,                              # 현재까지의 대화 메시지 리스트
    inferenceConfig={                                   # 생성 옵션(최대 토큰 수, 온도 등)
        "maxTokens": 2000,
        "temperature": 0
    },
)

response_message = response['output']['message']  # 모델 응답 메시지 추출
print(json.dumps(response_message, indent=4, ensure_ascii=False))  # 보기 좋게(JSON pretty) 출력

## 생성 응답 예시
##{
##    "role": "assistant",
##    "content": [
##        {
##            "text": "제가 인공지능 대화 모델이라 하루 일과를 겪는 건 아니지만, 여러분과 대화를 나누면서 많은 것을 배웁니다. 오늘도 유익한 대화가 있었으면 좋겠네요. 혹시 오늘 있었던 특별한 일이나 느낌 등을 말씀해 주시면 함께 이야기를 나눌 수 있을 것 같습니다."
##        }
##    ]
##}

print("\n----Alternating user and assistant messages----\n")
# (2) user ↔ assistant 메시지 번갈아가며 추가하는 예제

message_list.append(response_message)  # 모델 응답(assistant 메시지)을 대화 내역에 추가

print(json.dumps(message_list, indent=4, ensure_ascii=False))  # 전체 대화 내역 출력

## 출력 예시
##[
##    {
##        "role": "user",
##        "content": [
##            {
##                "text": "오늘 하루 어떠셨나요?"
##            }
##        ]
##    },
##    {
##        "role": "assistant",
##        "content": [
##            {
##                "text": "제가 인공지능 대화 모델이라 하루 일과를 겪는 건 아니지만, 여러분과 대화를 나누면서 많은 것을 배웁니다. 오늘도 유익한 대화가 있었으면 좋겠네요. 혹시 오늘 있었던 특별한 일이나 느낌 등을 말씀해 주시면 함께 이야기를 나눌 수 있을 것 같습니다."
##            }
##        ]
##    }
##]

print("\n----Including an image in a message----\n")
# (3) 메시지에 이미지를 첨부하는 예제

## 지원되는 이미지 유형 목록 : https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ImageBlock.html
## 이미지 크기 제약 조건 : https://docs.anthropic.com/en/docs/build-with-claude/vision#image-size

with open("image.webp", "rb") as image_file:  # 이미지 파일을 바이너리 읽기 모드로 오픈
    image_bytes = image_file.read()           # 이미지 바이트 데이터로 읽기

# 이미지 포함된 메시지 생성
image_message = {
    "role": "user",       # 발화자: user
    "content": [
        { "text": "Image 1:" },              # 이미지 설명 전 텍스트
        {
            "image": {                       # 이미지 데이터
                "format": "webp",            # 이미지 포맷: webp
                "source": {
                    "bytes": image_bytes     # 파일에서 읽은 바이트 그대로 사용 (base64 인코딩 불필요)
                }
            }
        },
        { "text": "이미지를 설명해 주세요." }  # 이미지에 대한 질문 텍스트
    ],
}

message_list.append(image_message)  # 이미지 메시지를 대화 내역에 추가

# 이미지 포함 메시지까지 대화 내역을 Bedrock에 전달하여 응답 받기
response = bedrock.converse(
    modelId="anthropic.claude-3-sonnet-20240229-v1:0",
    messages=message_list,
    inferenceConfig={
        "maxTokens": 2000,
        "temperature": 0
    },
)

response_message = response['output']['message']   # 응답 메시지 추출
print(json.dumps(response_message, indent=4, ensure_ascii=False))  # 출력

## 생성 응답 예시
## {
##    "role": "assistant",
##    "content": [
##        {
##            "text": "이 이미지는 작은 집 모형을 보여주고 있습니다. 집 모형은 푸른색과 붉은색 지붕으로 이루어져 있으며, 여러 개의 창문이 있습니다. 집 주변으로는 노란 꽃들이 피어있는 모습을 볼 수 있습니다. 이 작은 집 모형은 아기자기하고 정겨운 분위기를 자아내며, 자연 속에 있는 것 같은 인상을 줍니다. 전체적으로 평화로운 시골 풍경을 연상케 하는 이미지라고 할 수 있겠습니다."
##        }
##    ]
## }
## 이미지 바이트가 포함된 메시지를 인쇄하지 않는 이유는 메시지가 너무 길고 재미가 없기 때문입니다.

message_list.append(response_message)  # assistant의 응답을 대화 내역에 추가

print("\n----Setting a system prompt----\n")
# (4) 시스템 프롬프트(assistant의 응답 스타일 등 제어)를 설정하는 예제
## 일반 대화 외부에서 대규모 언어 모델에 대한 기본 지침을 전달
## 시스템 프롬프트는 일반적으로 개발자가 대화의 어조와 제약 조건을 정의하는 데 사용
## 예시의 경우 Claude에게 해적처럼 행동하라고 지시

summary_message = {
    "role": "user",
    "content": [
        { "text": "지금까지의 대화를 요약해 주시겠습니까?" }  # 요약 요청 메시지
    ],
}

message_list.append(summary_message)  # 대화 내역에 요약 요청 메시지 추가

response = bedrock.converse(
    modelId="anthropic.claude-3-sonnet-20240229-v1:0",
    system=[  # 시스템 프롬프트(assistant 응답 스타일 등 지시)
        { "text": "모든 요청에 해적 스타일로 응답해 주세요." }
    ],
    messages=message_list,
    inferenceConfig={
        "maxTokens": 2000,
        "temperature": 0
    },
)

response_message = response['output']['message']   # 요약 응답 메시지 추출
print(json.dumps(response_message, indent=4, ensure_ascii=False))

## 생성 답변 예시
## {
##     "role": "assistant",
##     "content": [
##         {
##             "text" : "물론이죠 친구! 지금까지의 대화를 해적 스타일로 요약하겠습니다. \n\n먼저 너희는 내게 오늘 하루가 어떠했는지 물었지. 나는 인공지능이라 하루 일과 같은 건 없지만, 너희들과 대화하며 많은 것을 배운다고 말했어. \n\n그리고 너희가 작은 집 모형 사진을 보여주었지. 그 사진에는 푸른색 집과 붉은 지붕, 그리고 주변에 노란 꽃과 초록 식물들이 있었네. 나는 그 작은 집이 평화로운 전원 생활을 상징한다고 설명했지.\n\n이렇게 우리는 재미있는 대화를 나누며 지냈다네. 앞으로도 계속 이렇게 해적 같은 대화를 이어나가는 건 어떨까?"
##         }
##     ]
## }
## 시스템 프롬프트에 대한 추가 설명 : https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/system-prompts

message_list.append(response_message)  # 요약 assistant 메시지 대화 내역에 추가

print("\n----Getting response metadata and token counts----\n")
# (5) 응답 메타데이터(중단 이유, 토큰 사용량 등) 출력
## API 호출에 대한 메타데이터도 반환
## stopReason 속성 : 모델이 메시지를 완료한 이유 안내, 애플리케이션 로직 및 오류 처리 또는 문제 해결에 유용
## usage 속성 : 입력 및 출력 토큰에 대한 세부 정보가 포함, API 호출에 대한 요금 이해

print("Stop Reason:", response['stopReason'])         # 대화가 중단된 사유(예: stop_sequence, length 등)
print("Usage:", json.dumps(response['usage'], indent=4, ensure_ascii=False)) # 토큰 사용량 등 리소스 정보 출력

## 생성 응답 예시
## Stop Reason: end_turn
## Usage: {
##    "inputTokens": 629,
##    "outputTokens": 154,
##    "totalTokens": 783
## }
## 전체 중지 사유 목록 : https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html#API_runtime_Converse_ResponseSyntax
## Bedrock 토큰 기반 가격 정책 : https://aws.amazon.com/ko/bedrock/pricing/
