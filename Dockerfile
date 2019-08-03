FROM node:10-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json /usr/src/app/
RUN ["npm", "ci", "--only", "production"]
COPY . .
RUN ["mv", "docker-config.json", "config.json"]
EXPOSE 3000
CMD [ "npm", "start" ]
