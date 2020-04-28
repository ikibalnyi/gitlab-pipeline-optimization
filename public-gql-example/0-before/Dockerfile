FROM git.mcmakler.com:4567/mcmakler-public/docker-images/mcmakler-node-build:current-alpine

# push app to container
COPY . /data/app
WORKDIR /data/app

CMD [ "npm" , "run" , "start"]
