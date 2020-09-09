FROM node:13-alpine

RUN mkdir /eventaservo
WORKDIR /eventaservo

RUN apk update && apk upgrade
RUN apk add git python make g++

COPY yarn.lock /eventaservo/
COPY package.json /eventaservo/
RUN yarn install

COPY . /eventaservo/

RUN yarn run build

EXPOSE 3002
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3002

CMD ["yarn", "start"]

