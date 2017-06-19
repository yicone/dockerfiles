FROM node:7.8

RUN npm config set registry https://registry.npm.taobao.org \
	&& npm i -g --silent bunyan webpack eslint gulp mocha ava\
	&& npm cache clear

ADD compile.sh /tmp/compile.sh

RUN chmod +x /tmp/compile.sh

WORKDIR /usr/src/app

CMD /tmp/compile.sh