FROM node:18

WORKDIR /app

COPY package*.json ./
RUN rm -rf node_modules package-lock.json
RUN npm install -g @angular/cli && npm install

COPY . .

CMD ["ng", "serve", "--host", "0.0.0.0"]
