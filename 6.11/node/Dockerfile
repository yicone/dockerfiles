FROM node:6

# RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV TZ="Asia/Shanghai"

WORKDIR /usr/src/app

# Add our user and group first to make sure their IDs get assigned consistently
RUN groupadd -r app && useradd -m -r -g app app

RUN npm config set registry https://registry.npm.taobao.org \
	&& npm i -g --silent pm2 bunyan \
	&& npm cache clear

RUN pm2 install pm2-logrotate

CMD ["node"]