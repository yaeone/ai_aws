import json             # JSON 데이터 입출력용 표준 라이브러리 (여기서는 사용은 안 하지만 일반적으로 응답 디코딩/디버깅에 많이 씀)
import boto3            # AWS 서비스 연동용 공식 파이썬 SDK

def chunk_handler(chunk):
    # 스트리밍으로 도착하는 텍스트 조각(chunk)을 받아서 화면에 바로바로 출력하는 콜백 함수
    print(chunk, end='')   # 각 chunk를 줄바꿈 없이(실시간 감각) 출력

def get_streaming_response(prompt, streaming_callback):
    # Bedrock Claude 3 Sonnet 모델에서 스트리밍 형태로 답변을 받아와서
    # 새로 도착하는 텍스트 델타가 있을 때마다 콜백 함수로 전달하는 메인 함수

    session = boto3.Session()                               # AWS 인증정보(프로파일, 환경변수 등)를 자동 감지해 boto3 세션 생성
    bedrock = session.client(service_name='bedrock-runtime')# Bedrock Runtime 클라이언트 생성(Bedrock Converse API 호출용)

    message = {                                             # 사용자 프롬프트 메시지를 Bedrock Converse API 형식에 맞춰 구성
        "role": "user",                                     # 역할: user(사용자)
        "content": [ { "text": prompt } ]                   # 실제 프롬프트 문장(리스트 형식)
    }

    response = bedrock.converse_stream(                     # Claude 3 Sonnet에게 스트리밍(실시간) 응답 요청
        modelId="anthropic.claude-3-sonnet-20240229-v1:0",  # 사용할 LLM ID(Claude 3 Sonnet, 2024년 2월 버전)
        messages=[message],                                 # 메시지 내역(여기선 단일 입력)
        inferenceConfig={                                   # LLM 생성 옵션
            "maxTokens": 2000,                              # 최대 토큰 수(응답 길이 제한)
            "temperature": 0.0                              # 창의성/랜덤성(0: 매우 고정, 1: 창의적)
        }
    )

    stream = response.get('stream')                         # Bedrock 스트리밍 응답에서 실제 stream 객체 추출

    for event in stream:                                    # 응답 stream에서 각 이벤트를 하나씩 실시간으로 반복 처리
        # event 예시: {'contentBlockDelta': {'delta': {'text': '다음 문장...'}}}
        if "contentBlockDelta" in event:                    # contentBlockDelta 키가 있으면(실제 텍스트 델타 도착)
            # delta: Claude가 방금 새로 생성한 텍스트(문장/단어/토큰 단위)
            streaming_callback(event['contentBlockDelta']['delta']['text']) # 콜백 함수(여기선 chunk_handler)로 전달

# 사용자 프롬프트 예시(스트리밍으로 응답 받을 내용)
prompt = "가장 친한 친구가 된 강아지 두 마리와 고양이 두 마리에 대한 이야기를 들려주세요."
                
# 메인 실행: get_streaming_response로 스트리밍 응답 받으면서 실시간 출력
get_streaming_response(prompt, chunk_handler)

print("\n")  # 마지막에 줄바꿈(응답 끝 표시)
