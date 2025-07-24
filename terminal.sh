#!/bin/bash

# 定义目标工作区名称
TARGET_WORKSPACE="$1"

# 查询当前工作区的名称
CURRENT_WORKSPACE=$(swaymsg -t get_workspaces | jq -r '.[] | select(.focused).name')

# 存储之前的工作区的名称
PREVIOUS_WORKSPACE_FILE="/tmp/sway_previous_workspace"

# 如果当前工作区是目标工作区，则切换回之前的工作区
if [ "$CURRENT_WORKSPACE" == "$TARGET_WORKSPACE" ]; then
    if [ -f "$PREVIOUS_WORKSPACE_FILE" ]; then
        # 读取之前的工作区
        PREVIOUS_WORKSPACE=$(cat "$PREVIOUS_WORKSPACE_FILE")
        swaymsg workspace "$PREVIOUS_WORKSPACE"
    else
        echo "没有找到之前的工作区记录，无法切换回去。"
    fi
else
    # 如果当前工作区不是目标工作区，则切换到目标工作区，并记录当前工作区为之前的工作区
    echo "$CURRENT_WORKSPACE" > "$PREVIOUS_WORKSPACE_FILE"
    swaymsg workspace "$TARGET_WORKSPACE"
fi
