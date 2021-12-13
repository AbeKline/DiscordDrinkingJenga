FROM node:alpine3.13
RUN mkdir /configTemplates 
WORKDIR /configTemplates
COPY tiles.json /configTemplates/tiles.json
COPY blankConfig.json /configTemplates/config.json
COPY blankAuth.json /configTemplates/auth.json
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY jengaBot.js .
CMD ["npm", "start"]

