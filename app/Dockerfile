FROM node:20-alpine
WORKDIR /app
COPY package.json ./
COPY app.js ./
COPY app.test.js ./
USER node
EXPOSE 3000
CMD ["node","app.js"]
