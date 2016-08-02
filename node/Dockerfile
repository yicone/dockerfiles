FROM node:6

RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# env TZ "Asia/Shanghai"

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Add our user and group first to make sure their IDs get assigned consistently
RUN groupadd -r app && useradd -m -r -g app app && chmod -R 777 /home/app

RUN npm config set registry https://registry.npm.taobao.org \
	&& npm i -g --silent pm2 bunyan \
	&& npm cache clear

CMD ["node"]