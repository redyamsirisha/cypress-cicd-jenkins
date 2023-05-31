# #stage 1
# FROM node:latest as node
# WORKDIR /app
# COPY ./angular .
# RUN npm install
# RUN npm run build
# #stage 2
# FROM nginx:alpine
# COPY --from=node /app/dist/angularpoc /usr/share/nginx/html
#stage 3
FROM cypress/included:10.7.0
RUN mkdir /cypressdocker
WORKDIR /cypressdocker
COPY ./cypress .
# COPY ./package.json .
# COPY ./package-lock.json .
# COPY ./cypress.config.ts .
# COPY ./tsconfig.json .
# COPY ./cypress ./cypress
RUN npm install
ENTRYPOINT ["npm", "run"]