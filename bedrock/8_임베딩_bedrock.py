import json                                   # json: Python 객체 <-> JSON 문자열 변환에 사용
import boto3                                  # boto3: AWS 서비스(Python용) SDK
from numpy import dot                         # numpy: 벡터 연산(내적)
from numpy.linalg import norm                 # numpy: 벡터의 크기(노름) 계산

# ----------------------------------------------------
# AWS Bedrock에서 텍스트 임베딩(숫자 벡터화) 결과를 반환받는 함수 정의
# 입력값: text (임베딩을 만들고 싶은 문자열)
# 반환값: text를 벡터(숫자 리스트)로 변환한 임베딩 결과
def get_embedding(text):
    session = boto3.Session()                     # AWS 인증정보(환경 변수/설정파일 등)로 세션 생성
    bedrock = session.client(service_name='bedrock-runtime')   # Bedrock Runtime 클라이언트 객체 생성
    
    # Bedrock에 임베딩 생성 요청(API 호출)
    # invoke_model()의 인자:
    #   - body: 요청 데이터(입력 텍스트)
    #   - modelId: 사용할 Bedrock 임베딩 모델 ID(여기선 Titan Text Embedding v2)
    #   - accept/contentType: 응답/요청 데이터 형식(JSON)
    response = bedrock.invoke_model(
        body=json.dumps({ "inputText": text }), 
        modelId="amazon.titan-embed-text-v2:0", 
        accept="application/json",
        contentType="application/json"
    )
    
    # 응답 본문은 스트림(buffer) 형태이므로, read()로 문자열 추출 후 JSON 파싱
    response_body = json.loads(response['body'].read())
    # 반환 데이터에서 'embedding' 필드(벡터 값) 추출해서 반환
    return response_body['embedding']     # [float, float, ...] 형태의 리스트(고차원 임베딩 벡터)

# ----------------------------------------------------
# 임베딩 벡터와 원본 텍스트를 함께 저장하는 객체(자료구조)
class EmbedItem:
    def __init__(self, text):
        self.text = text                   # 원본 텍스트 저장
        self.embedding = get_embedding(text)  # get_embedding 함수로 임베딩 벡터 생성/저장

# 임베딩 간 비교 결과(비교 텍스트와 유사도 점수)를 저장하는 클래스
class ComparisonResult:
    def __init__(self, text, similarity):
        self.text = text                  # 비교 대상 텍스트
        self.similarity = similarity      # 코사인 유사도 점수

# ----------------------------------------------------
# 두 벡터(임베딩) 간의 코사인 유사도 계산 함수
# (Cosine Similarity: 두 벡터가 얼마나 같은 방향/의미인지 [-1,1] 범위로 측정)
def calculate_similarity(a, b): # See Cosine Similarity: https://en.wikipedia.org/wiki/Cosine_similarity
    # 코사인 유사도 공식: (a · b) / (||a|| * ||b||)
    return dot(a, b) / (norm(a) * norm(b))

# ----------------------------------------------------
# 1. 비교 대상 텍스트들 준비 및 임베딩 변환

items = []     # EmbedItem 객체(텍스트+임베딩) 리스트

# "items.txt"라는 파일에서 각 줄을 읽어 리스트로 저장
# (각 줄마다 비교할 한 문장/문서/키워드가 저장되어 있다고 가정)
with open("items.txt", "r") as f:
    text_items = f.read().splitlines()    # 줄바꿈('\n') 단위로 리스트 변환

# 읽은 각 텍스트를 EmbedItem 객체로 만들고(=임베딩 생성), 리스트에 추가
for text in text_items:
    items.append(EmbedItem(text))    # EmbedItem 생성시 자동으로 임베딩 요청

# ----------------------------------------------------
# 2. 모든 임베딩 아이템에 대해, 각자 다른 모든 임베딩과의 코사인 유사도 비교 및 출력

for e1 in items:     # e1: 현재 기준점이 되는 임베딩 아이템
    print(f"Closest matches for '{e1.text}'")   # 현재 기준 텍스트 출력
    print ("----------------")
    cosine_comparisons = []                     # 코사인 유사도 비교 결과(ComparisonResult) 리스트 초기화
    
    for e2 in items:    # e2: 기준점(e1)과 비교할 다른 모든 아이템(자기 자신도 포함)
        similarity_score = calculate_similarity(e1.embedding, e2.embedding)   # 코사인 유사도 계산
        
        # 결과(비교 대상 텍스트, 유사도 점수)를 ComparisonResult 객체로 만들어 저장
        cosine_comparisons.append(ComparisonResult(e2.text, similarity_score)) 
        
    # 유사도 점수가 높은 순(내림차순)으로 정렬: 가장 유사(1에 가까움)한 텍스트부터 위에 나옴
    cosine_comparisons.sort(key=lambda x: x.similarity, reverse=True)
    
    # 정렬된 비교 결과를 (유사도, 텍스트) 형태로 한 줄씩 출력
    for c in cosine_comparisons:
        print("%.6f" % c.similarity, "\t", c.text)   # %.6f: 소수점 여섯째자리까지 표현, 탭(\t)으로 구분
    
    print()  # 한 기준점의 결과가 끝날 때 빈 줄 출력(가독성)

# ----------------------------------------------------
# [전체 코드 흐름 요약]
# (1) items.txt 파일에 저장된 여러 문장/문서를 한 줄씩 읽음
# (2) 각 문장/문서를 AWS Bedrock 임베딩 API로 벡터(고차원 배열)화
# (3) 모든 쌍(자기자신 포함)에 대해 코사인 유사도(0~1) 계산
# (4) 각 문장별로 가장 유사한 문장(의미적으로 가까운 것)이 무엇인지 순서대로 출력
#
# [응용 예시]
# - 유사한 문서/질문/검색어 자동 클러스터링
# - FAQ/챗봇/문서 추천에서 "의미상 가장 가까운 항목" 추천
# - 의미적으로 중복되는 문장/문서 자동 탐지
