FROM node:15.5.0-alpine

WORKDIR /var/www/app/artysed

RUN npm i -g serve

COPY . . 

RUN npm i
RUN npm run build

CMD [ "serve", "dist", "-s", "-l", "8080" ]

EXPOSE 8080