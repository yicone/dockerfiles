FROM centos

RUN yum update
RUN yum -y groupinstall "Development Tools"



# zsh

RUN yum -y install zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

RUN mv ~/.zshrc ~/.zshrc.bak

RUN sed 's/ZSH_THEME=".*"/ZSH_THEME="ys"/' ~/.zshrc.bak > ~/.zshrc

RUN echo "alias pg='ps aux|grep -v grep|'" >> ~/.zshrc

# RUN echo "alias vi=vim" >> ~/.zshrc

# RUN echo 'export LANG="zh_CN.UTF-8"' >> ~/.zshrc

RUN chsh -s /bin/zsh

RUN source ~/.zshrc

CMD ["zsh"]