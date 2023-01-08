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
