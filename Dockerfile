# 1. 파이썬 환경을 베이스로 삼습니다
FROM python:3.10-slim

# 2. 서버 안에서 일할 작업 공간(폴더) 만들기
WORKDIR /app

# 3. 내 깃허브에 있는 파일들을 카카오 서버 안으로 복사합니다
COPY requirements.txt .
COPY main.py .

# 4. 파이썬에 필요한 라이브러리(mcp, fastapi 등)를 설치합니다
RUN pip install --no-cache-dir -r requirements.txt

# 5. 카카오가 요구하는 3000번 포트로 파이썬 서버를 최종 실행합니다
EXPOSE 3000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3000"]
