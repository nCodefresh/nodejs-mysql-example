FROM node:6.9.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV
ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install
ONBUILD RUN npm install -g gulp
ONBUILD RUN npm install gulp
ONBUILD COPY . /usr/src/app