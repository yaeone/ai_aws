import sys              # 시스템 인자를 받기 위한 표준 라이브러리 (명령행 인자 처리)
import boto3            # AWS 서비스 연동을 위한 공식 파이썬 SDK

def get_text_response(model, input_content):
    # 주어진 모델명과 입력 프롬프트를 이용해 Bedrock Converse API로 텍스트 응답을 받아오는 함수

    session = boto3.Session()                                   # AWS 세션 생성 (인증/리전 자동 감지)
    bedrock = session.client(service_name='bedrock-runtime')    # Bedrock Runtime 클라이언트 생성

    message = {                                                 # Bedrock Converse API에 전달할 메시지(프롬프트) 구조
        "role": "user",                                         # 역할: user(사용자)
        "content": [ { "text": input_content } ]                # 실제 사용자 프롬프트(문장)
    }

    response = bedrock.converse(                                # Bedrock Converse API 호출
        modelId=model,                                          # 사용할 LLM(예: Claude 3 Sonnet 등) 모델 ID
        messages=[message],                                     # 대화 메시지(여기선 단일 프롬프트)
        inferenceConfig={                                       # 생성 옵션
            "maxTokens": 2000,                                  # 최대 토큰 수 (응답 길이 제한)
            "temperature": 0,                                   # 창의성(랜덤성) 정도 (0: 고정적, 1: 더 창의적)
            "topP": 0.9,                                        # 확률적 샘플링(일부 토큰만 샘플) 범위
            "stopSequences": []                                 # 응답을 멈출 문자열(여기선 없음)
        },
    )

    # 모델이 반환한 응답(response)에서 실제 답변 텍스트만 추출해 반환
    return response['output']['message']['content'][0]['text']

# 명령행 인자로부터 모델ID와 입력 텍스트를 받음
# sys.argv[1] : 모델ID (예: "anthropic.claude-3-sonnet-20240229-v1:0")
# sys.argv[2] : 입력 프롬프트(사용자 질문)
response = get_text_response(sys.argv[1], sys.argv[2])   # 함수 호출 및 결과 저장

print(response)  # 최종 모델 응답 텍스트 출력
