#stage 1
FROM node:latest as node
RUN mkdir app
COPY . app/
WORKDIR /app
RUN npm install
RUN npm run build
#stage 2
FROM nginx:alpine
COPY --from=node /app/dist/angularpoc /usr/share/nginx/html
