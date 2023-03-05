# FROM node:14.17.0-stretch-slim

# # RUN yarn global add @vue/cli

# WORKDIR /app
FROM node:18-alpine
WORKDIR /app

ENV LANG=C.UTF-8 \
 TZ=Asia/Tokyo

EXPOSE 5173

CMD ["npm", "run", "dev"]
