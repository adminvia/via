# 创建并推送一个新的Git存储库

## 完整脚本

```sh
#!/bin/bash

# 创建一个新的目录并进入该目录
mkdir my-new-repo
cd my-new-repo

# 初始化一个新的Git存储库
git init

# 创建一个README文件
echo "# My New Repository" > README.md

# 将文件添加到暂存区
git add README.md

# 提交更改
git commit -m "Initial commit"

# 将本地存储库与远程存储库关联
git remote add origin https://github.com/adminvia/via.git

# 推送到远程存储库的主分支
git push -u origin master
