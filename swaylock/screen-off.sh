#!/usr/bin/env bash


set -e

# 检查是否能连接到 sway（防止在 TTY 里误执行）
if ! swaymsg -t get_version >/dev/null 2>&1; then
    echo "错误：无法连接到 Sway，请在 Sway 会话中运行此脚本。" >&2
    exit 1
fi

# 锁屏

~/.config/sway/swaylock/lock.sh

# 熄屏
swaymsg "output * dpms off"

