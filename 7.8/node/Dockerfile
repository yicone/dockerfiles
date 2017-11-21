FROM node:7.8

ENV TZ="Asia/Shanghai"

RUN npm config set registry https://registry.npm.taobao.org \
	&& npm i -g --silent pm2 bunyan \
	&& npm cache clear

RUN pm2 install pm2-logrotate

WORKDIR /usr/src/app

CMD ["node"]