FROM reluxy/node

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install zsh\
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \

    && mv ~/.zshrc ~/.zshrc.bak \
    && sed 's/ZSH_THEME=".*"/ZSH_THEME="ys"/' ~/.zshrc.bak > ~/.zshrc \
    && echo "alias pg='ps aux|grep -v grep|'" >> ~/.zshrc

RUN npm i -g --silent n npm-check webpack eslint gulp mocha ava \
	&& npm cache clear