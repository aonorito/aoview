# Setup this apps

1. Build docker-compose
```
docker-compose build --no-cache
```

2. Make node_modules on host machine.
```
cd frontend
docker run --rm -v ${PWD}:/app -w /app node:18-alpine yarn install
```

3. Start docker-compose
```
docker-compose up
```

4. access to this URL.
http://localhost:5173/

# References
https://zenn.dev/ayuu/articles/84b482c37bea9a

# Front-end Directory structure
- frontend/
  - images
    - xxx.png
  - javascripts
    - apis
    - components
      - pages
        - xxx.vue
      - parts
        - xxx_header.vue
        - xxx_button.vue
      - templates
        - xxx_templates.vue
    - models
      - user.ts
      - role.ts
      - ....
    - stores
      - xxx_stores.ts
    - util
      - xxx_util.ts
    - index.js
    - App.vue
    - router.js
  - stylesheets 
    - base.scss

# GCP image local
[docker build]
docker build --platform linux/amd64 -t イメージ名 -f  docker/production/Dockerfile .
[ローカルで実行]
docker run -p 8080:8080 -e PORT=8080 イメージ名

# GCP image push
[docker build]
docker build --platform linux/amd64 -t イメージ名:latest -f docker/production/Dockerfile .
[ビルドしたイメージの確認]
docker images
[タグの付け替え]
docker tag イメージ名:latest gcr.io/prime-formula-377501/イメージ名:latest
[GCPにログインする]
gcloud auth login
[イメージのプッシュ]
docker push gcr.io/prime-formula-377501/イメージ名