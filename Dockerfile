FROM node:18.10.0-alpine3.16

WORKDIR /usr/src/app

ADD *.js .

EXPOSE 9000

ENTRYPOINT ["node","http-server.js"]