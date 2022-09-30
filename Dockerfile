FROM node:16.17.1

ENV NODE_ENV=production

WORKDIR /

COPY ["package.json", ".npmrc", "./"]
RUN npm install --omit=dev

# App layer
COPY [".", "."]
RUN npm run build

CMD [ "npm", "start" ]
