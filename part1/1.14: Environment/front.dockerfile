FROM node:lts

WORKDIR /app

EXPOSE 5000

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build

RUN npm i -g serve

CMD serve -s -l 5000 build