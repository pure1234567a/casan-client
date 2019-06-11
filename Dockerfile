# Stage 0, based on Node.js, to build and compile Angular
FROM node:10
COPY . /www/app

RUN npm install -g cordova ionic

WORKDIR /www/app
RUN npm install
 
EXPOSE 8100

ENTRYPOINT ["ionic"]
CMD ["serve", "8100"]