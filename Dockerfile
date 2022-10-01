FROM node:16.17.1-alpine

ENV NODE_ENV=production

WORKDIR /

COPY ["package.json", ".npmrc", "./"]
RUN npm install

# App layer
COPY [".", "."]
RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]
