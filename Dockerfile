FROM node:lts-alpine
WORKDIR /usr/src/app
COPY b4z-test-app/package*.json ./
RUN ls -l
RUN npm install
COPY b4z-test-app ./
RUN ls -l
RUN npm run build
COPY b4z-test-app/nodeServer.js dist/nodeServer.js
WORKDIR /usr/src/app/dist
EXPOSE 8080
CMD [ "node", "nodeServer.js" ]
