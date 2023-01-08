FROM node:14.17.0-stretch-slim

RUN yarn global add @vue/cli

WORKDIR /app