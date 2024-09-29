#!/bin/bash

# 桃色和藤紫色的 ASCII 艺术字
echo -e "\033[38;2;245;143;152m _____       _           _   \033[0m"
echo -e "\033[38;2;245;143;152m|_   _|_ _  | |__   ___ | |_ \033[0m"
echo -e "\033[38;2;245;143;152m  | |/ _\` | | '_ \ / _ \| __|\033[0m"
echo -e "\033[38;2;245;143;152m  | | (_| | | |_) | (_) | |_ \033[0m"
echo -e "\033[38;2;245;143;152m  |_|\__, | |_.__/ \___/ \__|\033[0m"
echo -e "\033[38;2;245;143;152m     |___/  \033[38;2;155;149;201mby: tg@zouxin001\033[0m                  \033[0m"

# 函数：显示提示信息
function show_message {
    echo -e "\n\033[1;32m$1\033[0m\n"
}

# 函数：显示错误信息并退出
function show_error {
    echo -e "\n\033[1;31m$1\033[0m\n"
    exit 1
}

# 函数：检查 telethon 是否已安装
function check_telethon_installed {
    if python3 -c "import telethon" &> /dev/null; then
        show_message "你已安装过 telethon。"
        exit 0
    else
        show_message "telethon 未安装，将继续安装过程。"
    fi
}

# 函数：检查 node.js 是否已安装
function check_node_installed {
    if node -v &> /dev/null; then
        show_message "你已安装过 node.js。"
        exit 0
    else
        show_message "node.js 未安装，将继续安装过程。"
    fi
}

# 显示菜单
function show_menu {
    echo -e "\n\033[1;33m请选择一个选项：\033[0m"
    echo -e "\033[1;32m1. 安装 telethon\033[0m"
    echo -e "\033[1;32m2. 安装 node.js\033[0m"
    echo -e "\033[1;32m3. 安装 x-ui\033[0m"
    echo -e "\033[1;31mq. 退出\033[0m"
}

# 读取用户选择
function read_choice {
    read -rp "请输入你的选择: " choice
    case $choice in
        1)
            check_telethon_installed
            install_telethon
            ;;
        2)
            check_node_installed
            install_node
            ;;
        3)
            install_x_ui
            ;;
        q)
            show_message "退出安装。"
            exit 0
            ;;
        *)
            show_error "无效的选择，请重试。"
            ;;
    esac
}

# 安装 telethon 的函数
function install_telethon {
    # 更新系统软件包数据库
    show_message "步骤 1：更新软件包数据库..."
    if sudo apt update; then
        show_message "软件包数据库更新成功。"
    else
        show_error "软件包数据库更新失败。"
    fi

    # 安装 python3-pip
    show_message "步骤 2：安装 python3-pip..."
    if sudo apt install -y python3-pip; then
        show_message "python3-pip 安装成功。"
    else
        show_error "python3-pip 安装失败。"
    fi

    # 安装 screen 程序
    show_message "步骤 3：安装 screen..."
    if sudo apt install -y screen; then
        show_message "screen 安装成功。"
    else
        show_error "screen 安装失败。"
    fi

    # 创建目录 /home/bot
    show_message "步骤 4：创建目录 /home/bot..."
    if mkdir -p /home/bot; then
        show_message "目录 /home/bot 创建成功。"
    else
        show_error "目录 /home/bot 创建失败。"
    fi

    # 切换到目录 /home/bot
    cd /home/bot || show_error "切换到目录 /home/bot 失败。"

    # 安装 telethon 和 requests
    show_message "步骤 5：安装 Python 库 telethon 和 requests..."
    if pip3 install telethon requests; then
        show_message "Python 库 telethon 和 requests 安装成功。"
    else
        show_error "Python 库 telethon 和 requests 安装失败。"
    fi

    show_message "设置完成。目录 /home/bot 已创建，所需的库已安装。"
}

# 安装 node.js 的函数
function install_node {
    # 安装 node.js
    show_message "步骤 1：安装 node.js..."
    if curl -fsSL https://deb.nodesource.com/setup_20.x | sudo bash - && sudo apt-get install -y nodejs; then
        show_message "node.js 安装成功。"
    else
        show_error "node.js 安装失败。"
    fi
}

# 安装 x-ui 的函数
function install_x_ui {
    # 安装 x-ui
    show_message "步骤 1：安装 x-ui..."
    if bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh); then
        show_message "x-ui 安装成功。"
    else
        show_error "x-ui 安装失败。"
    fi
}

# 主脚本逻辑
show_menu
read_choice
