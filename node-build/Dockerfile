FROM node:6

RUN export TZ="Asia/Shanghai"

RUN npm config set registry https://registry.npm.taobao.org \
	&& npm i -g --silent bunyan webpack eslint gulp mocha ava\
	&& npm cache clear

ADD compile.sh /tmp/compile.sh

CMD /tmp/compile.sh