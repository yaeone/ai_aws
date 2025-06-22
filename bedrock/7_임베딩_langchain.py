# ----------------------------------------------------
# AWS Bedrock 임베딩 서비스를 사용하기 위한 LangChain 래퍼 클래스 import
from langchain.embeddings import BedrockEmbeddings    # Bedrock의 임베딩 API를 파이썬에서 쉽게 쓰게 해주는 클래스

# numpy: 벡터(리스트/배열) 연산을 위한 라이브러리. dot은 내적, linalg.norm은 벡터의 크기(노름) 계산 함수.
from numpy import dot                                 # dot: 두 벡터의 내적(곱해서 모두 더하기)
from numpy.linalg import norm                         # norm: 벡터의 '길이'(유클리드 거리) 반환

# ----------------------------------------------------
# BedrockEmbeddings 클래스의 인스턴스를 만듦.
# 이 객체를 이용해서 자연어(텍스트)를 고차원 벡터(임베딩)로 변환할 수 있음.
belc = BedrockEmbeddings()

# ----------------------------------------------------
# 임베딩과 텍스트를 한 번에 보관하는 객체를 위한 클래스(자료구조) 정의
class EmbedItem:
    def __init__(self, text):
        self.text = text                      # 인스턴스의 text 속성에 원본 텍스트 저장
        self.embedding = belc.embed_query(text)   # embed_query 함수로 텍스트를 임베딩(벡터화)하여 저장
        # embed_query는 Bedrock API를 호출해서, 입력 텍스트를 벡터 형태로 반환함

# 임베딩 간 유사도 비교 결과(비교된 텍스트와 점수)를 보관하는 클래스 정의
class ComparisonResult:
    def __init__(self, text, similarity):
        self.text = text                  # 비교 대상 텍스트 저장
        self.similarity = similarity      # 해당 텍스트와의 코사인 유사도 점수(실수, -1~1 범위) 저장

# ----------------------------------------------------
# 두 벡터(임베딩) 간의 '코사인 유사도'를 계산하는 함수
# 입력값: a, b → 두 개의 벡터(동일한 차원수의 리스트/배열)
# 반환값: 코사인 유사도(실수, -1~1). 1이면 동일, 0이면 직교(관련 없음), -1은 정반대 방향.
def calculate_similarity(a, b):
    # 코사인 유사도 공식: (a · b) / (||a|| * ||b||)
    # dot(a, b): 두 벡터의 내적 (같은 위치끼리 곱해서 모두 더함)
    # norm(a): 벡터 a의 길이(크기), norm(b): 벡터 b의 길이
    return dot(a, b) / (norm(a) * norm(b))

# ----------------------------------------------------
# 1. 비교할 텍스트 목록을 불러와서, 각 항목을 임베딩 객체로 변환하는 과정

items = []   # EmbedItem 객체(텍스트+임베딩)를 담을 리스트(컨테이너) 생성

# "items.txt"라는 텍스트 파일을 읽어서, 각 줄을 하나의 비교 텍스트로 사용함
# (예: 여러 문장/문서를 한 줄씩 저장해둔 파일)
with open("items.txt", "r") as f:             # 파일을 읽기 모드("r")로 열기
    text_items = f.read().splitlines()         # 전체 내용을 한 번에 읽고, 줄 단위로 리스트로 분할

# 읽어온 각 텍스트 줄마다 EmbedItem 객체를 만들고(=임베딩 생성),
# items 리스트에 추가함.
for text in text_items:
    items.append(EmbedItem(text))
    # EmbedItem 생성시 자동으로 text와 임베딩이 한 번에 저장됨

# ----------------------------------------------------
# 2. 각 임베딩별로, 전체 아이템(EmbedItem)과의 유사도를 계산해서 출력

# 전체 EmbedItem(아이템)들에 대해 반복:
for e1 in items:       # e1: 이번에 기준점(Anchor)이 되는 아이템
    print(f"Closest matches for '{e1.text}'")   # 기준이 되는 텍스트(문장) 출력
    print ("----------------")
    cosine_comparisons = []                     # 기준 아이템에 대한 모든 비교 결과(ComparisonResult)를 담을 리스트

    # 기준 아이템 e1에 대해, 전체 아이템 e2와 1:1로 모두 비교
    for e2 in items:   # e2: 비교 대상 아이템(자기 자신도 포함)
        # 두 임베딩 벡터(e1.embedding, e2.embedding)의 코사인 유사도 점수 계산
        similarity_score = calculate_similarity(e1.embedding, e2.embedding)

        # 결과(비교 대상 텍스트, 유사도 점수)를 ComparisonResult 객체로 만들어 리스트에 추가
        cosine_comparisons.append(ComparisonResult(e2.text, similarity_score))

    # 유사도 점수(similarity)가 높은 순서(내림차순)로 정렬
    # → 1에 가까울수록 의미가 비슷하므로, 가장 유사한 텍스트가 위에 위치
    # (자기 자신과의 비교는 항상 1이므로 맨 위에 옴)
    cosine_comparisons.sort(key=lambda x: x.similarity, reverse=True)

    # 각 비교 결과(유사도 점수, 텍스트) 한 줄씩 출력
    for c in cosine_comparisons:
        print("%.6f" % c.similarity, "\t", c.text)
        # %.6f: 소수점 6자리까지 포매팅, 탭(\t)으로 구분

    print()  # 한 기준 아이템의 결과 끝마다 빈 줄 출력(가독성)

# ----------------------------------------------------
# 이 코드는 
# (1) 텍스트 파일의 여러 문장/문서를 한 줄씩 벡터화(임베딩)한 뒤,
# (2) 각 문장/문서가 다른 모든 문장/문서와 얼마나 유사한지(코사인 유사도 기준)를 계산하고,
# (3) 그 결과를 한 눈에 볼 수 있도록 유사도 순으로 출력하는 프로그램입니다.
#
# 실무 응용 예시: 
# - 대량 문서/FAQ/챗봇 응답의 의미적 중복 탐지, 
# - 비슷한 뉴스 기사 자동 클러스터링, 
# - 검색시 "이 내용과 가장 비슷한 문장" 추천 등.
