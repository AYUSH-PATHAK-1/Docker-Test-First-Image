FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL http://deb.nodesource.com/setup_18.x | bash  -
RUN apt-get install -y iputils-ping
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install
COPY main.js main.js


ENTRYPOINT ["node","main.js"]