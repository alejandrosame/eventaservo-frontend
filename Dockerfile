FROM node:13-alpine

RUN mkdir /eventaservo
WORKDIR /eventaservo

RUN apk update && apk upgrade
RUN apk add git python make g++

COPY yarn.lock /eventaservo/
COPY package.json /eventaservo/
RUN yarn install

WORKDIR /eventaservo

CMD ["yarn", "dev"]

