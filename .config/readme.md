# 配置文件使用说明

使用pyenv安装python3.7.2,进入.config/scripts安装依赖

``` shell
pip install -r requirements.txt
```

## 软件依赖

- i3-gaps、i3lock
- notify-osd
- conky
- feh
- goldendict
- synclient、syndaemon
- compton
- fontawesome
- amixer
- xbacklight
- scrot
- gimp
- rofi
- thunar
- google-chrome-stable
- code
- xss-lock
- copyq
- electronic-wechat
- networkmanager、network-manager-applet
- sakura
- pyenv
- telegram-desktop
- calibre
- volumeicon
- vimix-gtk-themes-git
- light-locker
- evolution
- postman
- fusuma
- thefuck
- gnome-calculator
- blueman

## yaourt
- keynav-git

### vim 插件
- LeaderF

### shell相关
- oh-my-zsh

## /etc/pacman.conf

```
#
# /etc/pacman.conf
#
# See the pacman.conf(5) manpage for option and repository directives

#
# GENERAL OPTIONS
#
[options]
# The following paths are commented out with their default values listed.
# If you wish to use different paths, uncomment and update the paths.
#RootDir     = /
#DBPath      = /var/lib/pacman/
#CacheDir    = /var/cache/pacman/pkg/
#LogFile     = /var/log/pacman.log
#GPGDir      = /etc/pacman.d/gnupg/
#HookDir     = /etc/pacman.d/hooks/
HoldPkg     = pacman glibc
#XferCommand = /usr/bin/curl -L -C - -f -o %o %u
#XferCommand = /usr/bin/wget --passive-ftp -c -O %o %u
#CleanMethod = KeepInstalled
#UseDelta    = 0.7
Architecture = auto

# Pacman won't upgrade packages listed in IgnorePkg and members of IgnoreGroup
#IgnorePkg   =
#IgnoreGroup =

#NoUpgrade   =
#NoExtract   =

# Misc options
#UseSyslog
#Color
#TotalDownload
CheckSpace
#VerbosePkgLists

# By default, pacman accepts packages signed by keys that its local keyring
# trusts (see pacman-key and its man page), as well as unsigned packages.
SigLevel    = Required DatabaseOptional
LocalFileSigLevel = Optional
#RemoteFileSigLevel = Required

# NOTE: You must run `pacman-key --init` before first using pacman; the local
# keyring can then be populated with the keys of all official Arch Linux
# packagers with `pacman-key --populate archlinux`.

#
# REPOSITORIES
#   - can be defined here or included from another file
#   - pacman will search repositories in the order defined here
#   - local/custom mirrors can be added here or in separate files
#   - repositories listed first will take precedence when packages
#     have identical names, regardless of version number
#   - URLs will have $repo replaced by the name of the current repo
#   - URLs will have $arch replaced by the name of the architecture
#
# Repository entries are of the format:
#       [repo-name]
#       Server = ServerName
#       Include = IncludePath
#
# The header [repo-name] is crucial - it must be present and
# uncommented to enable the repo.
#

# The testing repositories are disabled by default. To enable, uncomment the
# repo name header and Include lines. You can add preferred servers immediately
# after the header, and they will be used before the default mirrors.

#[testing]
#Include = /etc/pacman.d/mirrorlist

[core]
Include = /etc/pacman.d/mirrorlist

[extra]
Include = /etc/pacman.d/mirrorlist

#[community-testing]
#Include = /etc/pacman.d/mirrorlist

[community]
Include = /etc/pacman.d/mirrorlist

# If you want to run 32 bit applications on your x86_64 system,
# enable the multilib repositories as required here.

#[multilib-testing]
#Include = /etc/pacman.d/mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist

# An example of a custom package repository.  See the pacman manpage for
# tips on creating your own repositories.
#[custom]
#SigLevel = Optional TrustAll
#Server = file:///home/custompkgs

[archlinuxcn]
SigLevel = Optional TrustAll
Server   =  http://repo.archlinuxcn.org/$arch

```

## blackarch

``` shell
curl -O https://blackarch.org/strap.sh
# https://blackarch.org/downloads.html#install-repo 查看确认sha1sum
sha1sum strap.sh
chmod +x strap.sh
sudo ./strap.sh
```

### 安装命令

``` shell
# 依赖包

sudo pacman -Syu acpi_call acpid blueman calibre code compton conky copyq dmenu docker docker-compose evince evolution fcitx fcitx-gtk3 fcitx-sunpinyin feh fish freetype2 freetype2-demos freetype2-docs gimp git gnome-calculator gnome-font-viewer goldendict google-chrome htop i3-gaps i3lock iftop lightdm lightdm-gtk-greeter lightdm-slick-greeter light-locker linux-headers lxappearance nautilus firefox neofetch networkmanager network-manager-applet notify-osd noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra openssh postman-bin pyenv remmina rofi sakura screenfetch scrot shadowsocks telegram-desktop thefuck thunar tlp tlp-rdw tmux tp_smapi ttf-fira-code ttf-ubuntu-font-family typora vimix-gtk-themes-git volumeicon wget wireshark-qt wpa_supplicant xf86-input-synaptics xorg xorg-xinit xss-lock zsh

# 配置lightdm
sudo cp .config/lightdm/* /etc/lightdm/
sudo cp ~/.config/wallpaper/blackarch_logo_center_1920x1080.png /etc/lightdm/wallpaper
sudo systemctl enable lightdm.service
# 启动acpid
sudo systemctl enable acpid
# thinkpad t470p 使用acpilight包控制屏幕亮度
sudo pacman -S acpilight
# tlp 笔记本节电
sudo systemctl enable tlp.service
sudo systemctl enable tlp-sleep.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket
# 添加用户
useradd -m erriy
passwd erriy
visudo
su erriy
# 添加用户组
sudo gpasswd -a erriy audio
sudo gpasswd -a erriy video
sudo gpasswd -a erriy wireshark
# 如果是nvidia独显的话，添加nvidia驱动和bumblebee，注意安装nvidia驱动的正确版本
sudo pacman -S nvidia bumblebee
sudo systemctl enable bumblebeed
sudo gpasswd -a erriy bumblebee
# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# 下载配置
git clone git@github.com:Erriy/config.git
pyenv install 3.7.2 2.7.15
pyenv local 3.7.2 2.7.15
pip install -r ~/.config/scripts/requirements.txt
# 安装字体
yaourt ttl-meslo
# 安装字体 fontawesome,在fonts 文件夹里
# 以下的包忘了包含在哪个包里了
fusuma
```
