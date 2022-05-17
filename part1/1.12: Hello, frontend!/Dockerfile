FROM node:lts

WORKDIR /app

EXPOSE 5000

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

RUN npm i -g serve

CMD serve -s -l 5000 build