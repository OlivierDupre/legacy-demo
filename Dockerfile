FROM node:18.10.0-alpine3.16

WORKDIR /usr/src/app
# Pull dependencies in upper layers to prevent pulling them on every single code change
ADD ./*.json .
RUN npm i

# Add actual code
ADD ./src ./src

EXPOSE 9000

ENTRYPOINT ["node","src/server.js"]