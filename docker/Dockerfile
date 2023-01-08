# FROM node:14.17.0-stretch-slim

# # RUN yarn global add @vue/cli

# WORKDIR /app
FROM node:18-alpine
WORKDIR /app

ENV LANG=C.UTF-8 \
 TZ=Asia/Tokyo

# ↓↓↓ここはまだコメントアウト(後ほど使用)↓↓↓
# COPY package.json yarn.lock ./

# RUN yarn install

# 3000番でコンテナを公開
# EXPOSE 3000

# RUN apt update \
#     && npm install

# RUN npm install

EXPOSE 5173
CMD ["npm", "run", "dev"]
