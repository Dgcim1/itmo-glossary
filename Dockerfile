FROM node:slim

RUN apt update
RUN apt install curl -y

WORKDIR /itmo-glossary/

COPY public ./public/
COPY src ./src/
COPY package.json ./
COPY tsconfig.json ./

RUN npm install
CMD npm start

EXPOSE 3000/tcp
