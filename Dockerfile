FROM mhart/alpine-node

ENV DIR /usr/src/app

RUN mkdir -p $DIR
WORKDIR $DIR
COPY package.json $DIR
RUN npm install

COPY . $DIR

EXPOSE 8080
CMD ["node", "index.js"]
