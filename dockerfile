FROM node:8.10.0 as builder

# 작업 폴더를 만들고 npm 설치
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package.json /usr/src/app/package.json
RUN npm install --silent
RUN npm install react-scripts@2.1.3 -g --silent

# 소스를 작업폴더로 복사하고 앱 실행
COPY . /usr/src/app
CMD ["npm", "start"]

# docker build -t inbm/react-docker:v2 .
# 1. 이미지 빌드

# docker run -it  -p 7777:9090  inbm/react-docker:v2 
# 2. 로컬 도커에서 실행해보기

# docker login
# 도커 허브로 로그인 

# docker push inbm/react-docker:v2
# 3. 도커 허브로 이미지 push

# docker run -it  -p 7777:9090  inbm/react-docker:v2 
# 4. 실서버로 ssh 접속후 곧바로 실행

#http://inbm.co.kr:7777/
# 7777port로 서비스 


