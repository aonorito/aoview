FROM node:18-alpine
WORKDIR /app
COPY ./frontend/ ./

ENV LANG=C.UTF-8 \
 TZ=Asia/Tokyo
RUN yarn install
RUN npm run build

EXPOSE 8080

CMD ["npm", "run", "start"]
