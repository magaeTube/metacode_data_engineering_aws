# AWS CLI 버전 확인
$ aws --version


# CLI 정보 설정 (default)
$ aws configure

# CLI 정보 확인 (default)
$ aws configure list

# CLI 정보 설정 (default가 아닌 다른 profile)
$ aws configure --profile profile명

# CLI 정보 확인 (default가 아닌 다른 profile)
$ aws configure list --profile profile명

# AWS 정보 파일 확인 (macOS)
$ cat ~/.aws/credentials
$ cat ~/.aws/config

# AWS 정보 파일 확인 (Windows)
$ type %USERPROFILE%\.aws\credentials
$ type %USERPROFILE%\.aws\config

# AWS 정보 파일 확인 (Linux)
$ cat ~/.aws/credentials
$ cat ~/.aws/config



# AWS S3 버킷 목록 확인 (default)
$ aws s3 ls

# AWS S3 버킷 목록 확인 (default가 아닌 다른 profile)
$ aws s3 ls --profile profile명

# AWS S3 객체 목록 확인 (default)
$ aws s3 ls s3://버킷명/Prefix/

# AWS S3 객체 목록 확인 (default가 아닌 다른 profile)
$ aws s3 ls s3://버킷명/Prefix/ --profile profile명

# AWS S3 파일 업로드 (default)
$ aws s3 cp 로컬파일명 s3://버킷명/Prefix/파일명

# AWS S3 파일 업로드 (default가 아닌 다른 profile)
$ aws s3 cp 로컬파일명 s3://버킷명/Prefix/파일명 --profile profile명

# AWS S3 파일 다운로드 (default)
$ aws s3 cp s3://버킷명/Prefix/파일명 로컬파일명

# AWS S3 파일 다운로드 (default가 아닌 다른 profile)
$ aws s3 cp s3://버킷명/Prefix/파일명 로컬파일명 --profile profile명

# AWS S3 객체 삭제 (default)
$ aws s3 rm s3://버킷명/Prefix/파일명

# AWS S3 객체 삭제 (default가 아닌 다른 profile)
$ aws s3 rm s3://버킷명/Prefix/파일명 --profile profile명
