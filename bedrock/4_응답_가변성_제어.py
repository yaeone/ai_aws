import sys                  # 명령행 인자를 받기 위한 표준 라이브러리 (터미널에서 입력값 받기 용도)
import boto3                # AWS 서비스 연동용 공식 파이썬 SDK

def get_text_response(input_content, temperature):  # 텍스트 프롬프트와 생성 온도(temperature)를 받아 텍스트 응답을 생성하는 함수
    # Bedrock의 Claude 3 Sonnet LLM을 사용해 입력 텍스트에 대한 응답을 생성함

    session = boto3.Session()                                   # AWS 인증 정보(프로파일, 환경변수 등)로 boto3 세션 생성
    bedrock = session.client(service_name='bedrock-runtime')    # bedrock-runtime 클라이언트 생성(Bedrock Converse API와 통신용)

    message = {                                                 # Bedrock Converse API에서 요구하는 메시지 형식으로 입력 구성
        "role": "user",                                         # 역할(role): user(사용자)
        "content": [ { "text": input_content } ]                # content: 입력 텍스트(프롬프트) 리스트
    }

    response = bedrock.converse(                                # Bedrock Converse API 호출(LLM inference)
        modelId="anthropic.claude-3-sonnet-20240229-v1:0",      # 사용할 모델 ID(Anthropic Claude 3 Sonnet)
        messages=[message],                                     # 대화 이력 메시지(여기선 사용자 메시지만 단일 입력)
        inferenceConfig={                                       # LLM 추론 관련 옵션
            "maxTokens": 2000,                                  # 응답 최대 토큰 수(길이 제한)
            "temperature": temperature,                         # 창의성/랜덤성 조절 파라미터(0: 고정, 1: 창의적)
            "topP": 0.9,                                        # 확률적 토큰 샘플링 범위(0~1)
            "stopSequences": []                                 # 응답이 멈출 문자열 시퀀스(여기선 사용 안 함)
        },
    )

    # Bedrock이 반환하는 응답 구조에서 실제 답변 텍스트만 추출해 반환
    # response['output']['message']['content'] : 메시지(리스트)
    # [0]['text']: 첫 번째 텍스트 항목만 추출
    return response['output']['message']['content'][0]['text']

# 아래는 입력값을 받아 3번 반복해서 모델 응답을 출력하는 메인 로직

for i in range(3):  # 3회 반복 (매번 같은 입력에 대해 LLM 응답의 변동성 관찰 가능)
    # sys.argv[1] : 명령행 첫 번째 인자(사용자 프롬프트 텍스트)
    # sys.argv[2] : 명령행 두 번째 인자(temperature, float으로 변환 필요)
    response = get_text_response(sys.argv[1], float(sys.argv[2]))   # 함수 호출로 응답 텍스트 획득
    print(response, end='\n\n')                                    # 각 응답 사이에 빈 줄(2개) 넣어서 출력
