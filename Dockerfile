# Base image
FROM node
MAINTAINER Louis Benagha
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

## Install app dependencies
RUN npm install
EXPOSE 3000

## run the application
CMD ["start", "node ./app.js"]
