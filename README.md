## docker build -t inbm/react-docker:v2 .
이미지 빌드

## docker run -it  -p 7777:9090  inbm/react-docker:v2 
로컬 도커에서 실행해보기

## docker login
도커 허브로 로그인 

## docker push inbm/react-docker:v2
도커 허브로 이미지 push

## docker run -it  -p 7777:9090  inbm/react-docker:v2 
실서버(cafe24) 로 ssh 접속후 곧바로 실행

## http://inbm.co.kr:7777/
7777 port로 서비스 확인