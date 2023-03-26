# # ベースイメージを選択（ここではNode.js 14を使用）
# FROM node:18-alpine

# # 作業ディレクトリを設定
# WORKDIR /app

# # package.jsonとpackage-lock.jsonをコピー
# COPY ./frontend/package*.json ./

# # 依存関係のインストール
# RUN npm install

# # プロジェクトのファイルをコピー
# COPY ./frontend .

# # Viteプロジェクトをビルド
# RUN npm run build

# # Nginxをインストールし、静的ファイルを配信するための設定
# FROM nginx:stable
# COPY --from=0 /app/dist /usr/share/nginx/html
# #COPY --from=0 /app/nginx.conf /etc/nginx/conf.d/default.conf
# COPY --from=0 /app/nginx.conf.template /etc/nginx/templates/default.conf.template

# # ポートを公開
# EXPOSE 8080

# # Nginxを環境変数をサブスティテュートして実行
# CMD ["/bin/sh", "-c", "envsubst < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]

# --------------------------------------------------------------------------------------------------------------

# ビルドステージ
FROM node:14-alpine AS builder

WORKDIR /app

COPY /frontend/package.json /frontend/package-lock.json ./

# RUN npm ci
RUN npm install

COPY ./frontend .

RUN npm run build

# Nginxステージ
FROM nginx:stable-alpine

COPY /frontend/nginx.conf /etc/nginx/conf.d/default.conf

# COPY ./frontend/dist /usr/share/nginx/html
COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

# --------------------------------------------------------------------------------------------------------------

# # Nginxステージ
# FROM nginx:stable-alpine

# COPY /frontend/nginx.conf /etc/nginx/conf.d/default.conf

# COPY ./frontend/dist /usr/share/nginx/html

# EXPOSE 8080

# CMD ["nginx", "-g", "daemon off;"]
