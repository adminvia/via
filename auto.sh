#!/bin/bash

# 检查是否提供了提交信息
if [ -z "$1" ]; then
  echo "请提供提交信息。"
  echo "用法：./git_auto.sh \"提交信息\""
  exit 1
fi

# 添加所有更改
git add .

# 提交更改
git commit -m "$1"

# 推送到远程仓库
git push
