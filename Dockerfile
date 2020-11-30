# docker build --tag belgreen/mern:0.0.1 ./
FROM node
LABEL Author be-lgreen

RUN mkdir -p /app
WORKDIR /app

COPY ./backend /app
RUN npm install

RUN apt-get update
RUN apt-get -y install vim

ENV NODE_ENV=DEV
EXPOSE 3000
CMD npm start