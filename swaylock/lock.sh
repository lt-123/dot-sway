#!/usr/bin/env bash
# Swaylock 启动脚本
# 使用配置文件启动 swaylock，并随机选择壁纸

# 确保 swaylock 已安装
if ! command -v swaylock &> /dev/null; then
    echo "错误: swaylock 未安装"
    echo "请使用以下命令安装: sudo pacman -S swaylock"
    exit 1
fi

# 配置文件路径
CONFIG_FILE="$HOME/.config/sway/swaylock/config"

# 壁纸目录
WALLPAPER_DIR="$HOME/.config/sway/wallpapers"

# 检查配置文件是否存在
if [ ! -f "$CONFIG_FILE" ]; then
    echo "错误: 配置文件不存在: $CONFIG_FILE"
    exit 1
fi

# 检查壁纸目录是否存在
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "错误: 壁纸目录不存在: $WALLPAPER_DIR"
    exit 1
fi

# 从壁纸目录随机选择一张图片
# 支持的图片格式: jpg, jpeg, png
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | shuf -n 1)

# 检查是否找到壁纸
if [ -z "$RANDOM_WALLPAPER" ]; then
    echo "错误: 在 $WALLPAPER_DIR 中未找到任何图片"
    exit 1
fi

echo "使用随机壁纸: $(basename "$RANDOM_WALLPAPER")"

# 启动 swaylock，使用随机壁纸（命令行参数会覆盖配置文件中的设置）
exec swaylock -f -C "$CONFIG_FILE" --image "$RANDOM_WALLPAPER"
