FROM node:16.13.1

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY ./public ./public
COPY ./index.js ./index.js
EXPOSE 3000
CMD npm start