FROM node:lts-alpine3.13
WORKDIR /home/node/app
RUN apk update && \
    apk add git automake autoconf libtool gcc g++ make pkgconfig nasm && \
    npm install -g gatsby-cli
EXPOSE 8000