FROM node:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
COPY package-lock.json /usr/src/app/
RUN npm install 
COPY . /usr/src/app
EXPOSE 8000
CMD [ "npm", "dev" ]
