# Stage 0, based on Node.js, to build and compile Angular
FROM node:10

RUN npm install -g cordova@8.0.0

RUN npm install -g ionic@4.12.0

ENV HOME=/src

RUN mkdir $HOME

ENV IONIC_APP=ionic-app

RUN cd $HOME

RUN ionic start $HOME/$IONIC_APP --v2

WORKDIR $HOME/$IONIC_APP

EXPOSE 8100
EXPOSE 35729

CMD ionic serve