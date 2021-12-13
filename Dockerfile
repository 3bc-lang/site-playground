FROM node:12

LABEL NAME "3bc-playground"

WORKDIR /app

COPY . /app

EXPOSE 3000

RUN npm install vite -g

RUN yarn install

CMD ["yarn","run","build"]
