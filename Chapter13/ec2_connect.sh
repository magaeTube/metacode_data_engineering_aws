# EC2 서버 접속
ssh -i [PEM키 경로] ubuntu@[IP 주소]

# PIP3 설치 (필요하다면)
sudo apt update
sudo apt install python3-pip

# 로컬 파일 EC2 서버로 복사
scp -i [PEM키 경로] [로컬 파일명] ubuntu@[IP 주소]:[EC2 서버 복사할 경로]
