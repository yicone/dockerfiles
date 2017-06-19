FROM node:7.8

RUN npm config set registry https://registry.npm.taobao.org \
	&& npm i -g --silent pm2 bunyan \
	&& npm cache clear

WORKDIR /usr/src/app

CMD ["node"]