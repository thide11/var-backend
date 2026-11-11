FROM node:16

# RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package.json ./

# USER node

RUN npm i --include=dev
RUN npm i vite

COPY . .

EXPOSE 500

# CMD [ "npm", "i", "vite" ]
CMD [ "npm", "run", "dev" ]
