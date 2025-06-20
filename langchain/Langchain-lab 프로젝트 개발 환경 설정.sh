cd ~/environment
# 홈 디렉토리의 'environment' 폴더로 이동합니다.
# AWS Cloud9이나 일부 개발환경에서 자주 사용되는 작업 디렉토리입니다.

git clone https://github.com/dmichellee/langchain-lab.git
# 'langchain-lab'라는 이름의 GitHub 저장소를 로컬로 복제(clone)합니다.
# 명령 실행 후 현재 디렉토리에 'langchain-lab' 폴더가 새로 생깁니다.

cd langchain-lab
# 복제된 'langchain-lab' 디렉토리로 이동합니다.

pip3 install --upgrade --quiet boto3 langchain_aws langchain langchain-community pymupdf
# pip3(파이썬3 패키지 매니저)를 이용해 아래 패키지들을 설치하거나 최신 버전으로 업그레이드합니다.
# --upgrade : 최신 버전으로 설치
# --quiet   : 설치 과정의 출력을 최소화
#   - boto3                : AWS SDK for Python (AWS 서비스와 상호작용 가능)
#   - langchain_aws        : LangChain 프레임워크의 AWS 관련 기능 패키지
#   - langchain            : 다양한 LLM(대형 언어모델)과 프롬프트 체인 등을 쉽게 구축할 수 있는 오픈소스 프레임워크
#   - langchain-community  : LangChain 관련 커뮤니티 확장 패키지
#   - pymupdf              : PDF 및 전자문서 처리용 라이브러리 (문서 읽기/분석 등에 활용)
