# Build Angular app
FROM node:20.19.1 AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Serve using Nginx
FROM nginx:alpine

# Remove default page and copy built app
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder /app/dist/temp-front /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
