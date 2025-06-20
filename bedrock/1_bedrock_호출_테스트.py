import json  # 파이썬에서 JSON 데이터(문자열 ↔ 딕셔너리) 변환을 도와주는 표준 라이브러리
import boto3 # AWS(아마존 웹 서비스)를 파이썬에서 제어할 수 있게 해주는 공식 라이브러리

# 1. AWS와 연결할 세션(Session) 객체를 생성합니다.
#    - 세션은 AWS 서비스와 통신하는 기본 연결通路를 만들어 줍니다.
#    - AWS 인증 정보(액세스키 등)를 내부적으로 사용합니다.
session = boto3.Session()

# 2. Bedrock 서비스용 클라이언트 객체를 생성합니다.
#    - session.client() 함수는 특정 AWS 서비스에 접근하기 위한 클라이언트(통신 객체)를 만듭니다.
#    - 여기서 'bedrock-runtime'은 생성형 AI(Generative AI) 서비스를 제공하는 Bedrock의 실시간 API입니다.
bedrock = session.client(service_name='bedrock-runtime')

# 3. 사용할 AI 언어모델의 ID(고유명)를 지정합니다.
#    - 'amazon.titan-text-express-v1'은 Amazon에서 제공하는 텍스트 생성 모델입니다.
bedrock_model_id = "amazon.titan-text-express-v1"

# 4. AI에게 질문(프롬프트, prompt)을 텍스트로 작성합니다.
#    - 아래 예시는 "뉴햄프셔에서 가장 큰 도시는 어디인가?"라는 질문입니다.
prompt = "What is the largest city in New Hampshire?"

# 5. AI 모델에게 보낼 입력 데이터를 딕셔너리로 만듭니다.
#    - "inputText": 실제로 질문할 문장(프롬프트)
#    - "textGenerationConfig": AI 생성 방식 세부 설정
#        - temperature: 0 (0이면 항상 일관된, 더 정답에 가까운 답을 추구)
#        - topP: 0.5 (확률 분포에서 상위 50% 단어만 후보로 사용)
#        - maxTokenCount: 1024 (최대 생성 단어 수, 토큰 기준)
#        - stopSequences: [] (생성을 중단시킬 특수 문자열, 여기선 없음)
#    - 이 딕셔너리를 JSON 문자열로 변환(json.dumps)해서 보냅니다.
body = json.dumps({
    "inputText": prompt,
    "textGenerationConfig": {
        "temperature": 0,  
        "topP": 0.5,
        "maxTokenCount": 1024,
        "stopSequences": []
    }
})

# 6. Bedrock 서비스에 위에서 만든 입력값(body)을 보냅니다.
#    - bedrock.invoke_model() 함수는
#      (1) 입력 데이터(body)와
#      (2) 사용할 모델 ID(modelId)를 받아서,
#      (3) 실제 AWS Bedrock AI에게 질문을 전송합니다.
#    - accept, contentType은 데이터 형식을 지정 ('application/json' = JSON 형식)
#    - 결과는 AWS에서 반환된 응답(response) 객체로 전달됩니다.
response = bedrock.invoke_model(
    body=body, 
    modelId=bedrock_model_id, 
    accept='application/json', 
    contentType='application/json'
)

# 7. 응답(response) 객체에서 실제 생성된 텍스트 데이터를 읽어옵니다.
#    - response.get('body')로 응답 본문(Body)을 가져옴
#    - .read()로 바이트 데이터를 읽어서
#    - json.loads()로 파이썬 객체(딕셔너리)로 변환합니다.
response_body = json.loads(response.get('body').read())

# 8. 응답 딕셔너리(response_body)에서 실제 AI가 생성한 답변(텍스트)만 추출합니다.
#    - Bedrock 응답 형식에서, "results"는 여러 결과 중 하나 이상을 담는 리스트
#    - 첫 번째 결과(results[0])의 "outputText" 항목이 실제 생성된 문장입니다.
response_text = response_body["results"][0]["outputText"]

# 9. 최종 결과(생성된 답변 텍스트)를 콘솔에 출력합니다.
#    - print() 함수는 파이썬에서 값을 화면에 보여주는 기본 함수입니다.
print(response_text)
