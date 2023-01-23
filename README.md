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