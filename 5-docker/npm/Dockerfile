FROM node:12-alpine
WORKDIR /data/app

# First load dependencies
COPY ./package.json .
COPY ./yarn.lock .
RUN yarn install --production

# Then copy application
COPY dist dist

CMD [ "yarn", "start" ]
