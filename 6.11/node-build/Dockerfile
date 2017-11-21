FROM node:6

ENV TZ="Asia/Shanghai"

RUN npm config set registry https://registry.npm.taobao.org \
	&& npm i -g --silent bunyan \
	&& npm cache clear

ADD compile.sh /tmp/compile.sh

RUN chmod +x /tmp/compile.sh

WORKDIR /usr/src/app

CMD /tmp/compile.sh