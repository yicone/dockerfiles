# dockerfiles

镜像列表：
- `reluxy/node` 部署用镜像
- `reluxy/node-build` 构建用镜像
- `reluxy/node-dev` 开发用镜像

说明：

- npm 使用 `taobao` 镜像
- *-build 镜像定义中设置了构建流程 `npm install -> npm test -> npm run build`
- *-build 镜像预装的 npm  packages: `bunyan`
- *-dev 镜像中包含了`vim tmux lsof git-extras zsh oh-my-zsh`, 并启用了开发环境常用`omz`的插件
- *-dev 镜像预装的 npm  packages: `n npm-check`
- 基础镜像版本默认为 node:latest
- 构建时可指定基础镜像版本 例 `docker build --build-arg NODE_VERSION=8 ./node -t reluxy/node:8`
- 设置时区为 `Asia/Shanghai`