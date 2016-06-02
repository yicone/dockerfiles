FROM centos

# common tools
RUN yum -y groupinstall "Development Tools"

# zsh
RUN yum -y install zsh \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \

    && mv ~/.zshrc ~/.zshrc.bak \
    && sed 's/ZSH_THEME=".*"/ZSH_THEME="ys"/' ~/.zshrc.bak > ~/.zshrc \
    && echo "alias pg='ps aux|grep -v grep|'" >> ~/.zshrc

# node.js
RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - \
    && yum -y install nodejs
    
RUN npm i -g pm2 supervisor bunyan

WORKDIR /usr/src/app

VOLUME ["/usr/src/app"]

CMD ["zsh"]