FROM node:latest
RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/src
COPY src /usr/src/app/src
COPY package.json /usr/src/app

WORKDIR /usr/src/app

RUN npm install
EXPOSE 5001
CMD ["npm","start"]