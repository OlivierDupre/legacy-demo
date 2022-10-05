FROM node:0.11.14

WORKDIR /usr/src/app
ADD *.js .

EXPOSE 9000

ENTRYPOINT ["node","http-server.js"]