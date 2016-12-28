FROM reluxy/node

#RUN apt-get upgrade -y
RUN apt-get update &&  \
	apt-get -y upgrade && \
	apt-get -y install vim tmux lsof git-extras zsh && \
	export TERM=linux; curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | zsh || true && \
	touch /root/.z

RUN npm i -g --silent n npm-check webpack eslint gulp mocha ava && \
	npm cache clear

# https://hub.docker.com/r/bwithem/oh-my-zsh-tmux/~/dockerfile/
RUN mv ~/.zshrc ~/.zshrc.bak && \
    sed 's/ZSH_THEME=".*"/ZSH_THEME="ys"/' ~/.zshrc.bak > ~/.zshrc && \
    sed 's/plugins=(git)/plugins=(git tig git-extras git-flow git-prompt gitfast gitignore history node npm docker docker-compose z fasd zmv nmap httpie iwhois pod sudo themes tmux command-not-found colored-man-pages zsh-navigation-tools zsh-completions)/g' ~/.zshrc.bak > ~/.zshrc && \
    usermod -s /bin/zsh root

ENTRYPOINT ["zsh"]