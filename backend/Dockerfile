FROM node
LABEL Author be-lgreen

RUN apt-get update
RUN apt-get -y install vim

RUN mkdir -p /app/backend
WORKDIR /app/backend

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 5000
CMD node server.js