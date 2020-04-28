FROM node:12-alpine

COPY . /data/app
WORKDIR /data/app

CMD [ "yarn", "start" ]
