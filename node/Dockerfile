FROM node:6

RUN export TZ="Asia/Shanghai"

# Create app directory
WORKDIR /usr/src/app

# Add our user and group first to make sure their IDs get assigned consistently
RUN groupadd -r app && useradd -m -r -g app app

RUN npm config set registry https://registry.npm.taobao.org \
	&& npm i -g --silent pm2 bunyan \
	&& npm cache clear

CMD ["node"]