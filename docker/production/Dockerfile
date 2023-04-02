# ビルドステージ
FROM node:14-alpine AS builder

WORKDIR /app

COPY /frontend/package.json /frontend/package-lock.json ./

# RUN npm ci
# ci で実行すると、キャッシュから取ってきてNode Moduleを高速インストールするので、調べてみる
RUN npm install

COPY ./frontend .

RUN npm run build

# Nginxステージ
FROM nginx:stable-alpine

COPY /frontend/nginx.conf /etc/nginx/conf.d/default.conf

# COPY ./frontend/dist /usr/share/nginx/html
COPY --from=builder /app/dist /usr/share/nginx/html

ENV PORT 8080
ENV HOST 0.0.0.0

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
