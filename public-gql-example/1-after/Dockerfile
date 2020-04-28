FROM node:12-alpine
WORKDIR /data/app

COPY ./package.json .
COPY ./yarn.lock .

RUN yarn install --production
COPY dist dist
COPY .env.* ./

CMD [ "yarn", "start" ]
