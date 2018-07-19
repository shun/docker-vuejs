FROM node:9-alpine

RUN apk update && apk upgrade

RUN apk add --no-cache \
        bash \
        vim \
        git \
        shadow \
        nginx

RUN mkdir /run/nginx
RUN npm install -g npm
RUN npm install -g vue-cli
RUN chsh -s /bin/bash
COPY .vimrc /root/.vimrc
COPY .bashrc /root/.bashrc

CMD ["nginx", "-g", "daemon off;"]

