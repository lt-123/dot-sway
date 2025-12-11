# Sway 配置

Arch Linux 下的个人 Sway 窗口管理器配置。

## 特性

- **窗口管理器**: Sway (Wayland 混成器)
- **状态栏**: Waybar 自定义配置
- **应用启动器**: Rofi
- **终端**: alacritty
- **截图工具**: Grim + Slurp + Swappy
- **剪贴板管理器**: Clipman
- **Vim 风格导航**: 使用 hjkl 进行窗口焦点切换

## 自动启动应用

以下应用程序会在启动时自动运行：
- 网络管理器小程序 (nm-applet)
- Fcitx5 (输入法)
- Polkit GNOME 认证代理
- JetBrains Toolbox
- Waybar (状态栏)

## 快捷键

### 基本操作
- `$mod + Return` - 打开文件管理器（主目录）
- `$mod + d` - 启动应用程序启动器 (Rofi)
- `$mod + q` - 关闭当前窗口
- `$mod + Shift + c` - 重载配置文件
- `$mod + Shift + e` - 退出 Sway

### 窗口导航（Vim 风格）
- `$mod + h/j/k/l` - 聚焦 左/下/上/右 窗口
- `$mod + Shift + h/j/k/l` - 移动窗口到 左/下/上/右
- 也支持方向键

### 工作区管理
- `$mod + 1-0` - 切换到工作区 1-10
- `$mod + Shift + 1-0` - 移动窗口到工作区 1-10

### 布局
- `$mod + b` - 水平分割
- `$mod + v` - 垂直分割
- `$mod + s` - 堆叠布局
- `$mod + w` - 标签布局
- `$mod + e` - 切换分割布局
- `$mod + f` - 全屏
- `$mod + Shift + Space` - 切换浮动
- `$mod + r` - 进入调整大小模式

### 实用工具
- `Print` - 截图（使用 slurp 选择区域，swappy 编辑）
- `F1` - 启动终端（T 模式）
- `F4` - 启动终端（M 模式）
- `XF86AudioMute/LowerVolume/RaiseVolume` - 音频控制
- `XF86MonBrightnessDown/Up` - 亮度控制

## 工作区分配

应用程序会自动分配到特定工作区：
- 工作区 1: Zen 浏览器
- 工作区 2: VS Code、Android Studio
- 工作区 3: QQ、微信、钉钉、Telegram
- 工作区 4: Obsidian
- 工作区 10: Remmina

## 目录结构

```
.
├── config              # Sway 主配置文件
├── config.d/           # 额外的配置模块
├── config.d-bak/       # 配置备份
├── waybar/             # Waybar 配置
│   ├── config.jsonc
│   └── style.css
├── wallpapers/         # 壁纸收藏
├── terminal.sh         # 终端启动脚本
└── hyprlock.conf       # 锁屏配置
```

## 依赖项

所需软件包：
- `sway` - 窗口管理器
- `foot` - 终端模拟器
- `rofi` - 应用启动器
- `waybar` - 状态栏
- `grim` - 截图工具
- `slurp` - 区域选择器
- `swappy` - 截图编辑器
- `wl-clipboard` - 剪贴板工具
- `clipman` - 剪贴板管理器
- `brightnessctl` - 亮度控制
- `pulseaudio` / `pipewire-pulse` - 音频控制
- `nm-applet` - 网络管理器小程序
- `fcitx5` - 输入法
- `tilda` - 下拉终端
- `polkit-gnome` - 认证代理

## 安装

1. 克隆此仓库到 `~/.config/sway`：
```bash
git clone <仓库地址> ~/.config/sway
```

2. 安装所需的依赖项

3. 启动 Sway：
```bash
sway
```

## 自定义

- 编辑 `config` 修改 Sway 主要设置
- 修改 `waybar/config.jsonc` 和 `waybar/style.css` 自定义状态栏
- 将自定义壁纸添加到 `wallpapers/` 目录
- 额外的配置可以放在 `config.d/` 目录中

## 许可

个人配置文件 - 可自由使用和修改。
