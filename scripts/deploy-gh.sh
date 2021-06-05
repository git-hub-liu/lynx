#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<git-hub-liu>.github.io
# git push -f git@github.com:<git-hub-liu>/<git-hub-liu>.github.io.git master

# 如果发布到 https://<git-hub-liu>.github.io/<lynx>
# git push -f git@github.com:<git-hub-liu>/<lynx>.git master:gh-pages

# 把上面的 <git-hub-liu> 换成你自己的 Github 用户名，<lynx> 换成仓库名，比如我这里就是：
git push -f git@github.com:<git-hub-liu>/<lynx>.git master:gh-pages

cd -
