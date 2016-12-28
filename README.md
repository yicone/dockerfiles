# dockerfiles

镜像列表：
- `reluxy/node` 部署用镜像
- `reluxy/node-build` 构建用镜像
- `reluxy/node-dev` 开发用镜像

说明：
- 设置时区为 `Asia/Shanghai`
- npm 使用 `taobao` 镜像
- *-build 镜像定义中设置了构建流程 `npm install -> npm test -> npm run build`
- *-build 镜像预装的 npm  packages: `bunyan webpack eslint gulp mocha ava`
- *-dev 镜像中包含了`vim tmux lsof git-extras zsh oh-my-zsh`, 并启用了开发环境常用`omz`的插件
- *-dev 镜像预装的 npm  packages: `n npm-check webpack eslint gulp mocha ava`
- 各镜像当前版本基于 node:6
