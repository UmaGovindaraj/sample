FROM node:10.13-alpine
WORKDIR /usr/src/app
COPY package.json /usr/src/app/package.json
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 4000
CMD node server.js