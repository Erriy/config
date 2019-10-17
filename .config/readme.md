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


### 安装命令

``` shell
sudo pacman -Syu i3-gaps i3lock notify-osd conky feh goldendict compton scrot gimp rofi thunar code xss-lock copyq networkmanager network-manager-applet sakura pyenv telegram-desktop calibre volumeicon vimix-gtk-themes-git light-locker evolution postman-bin  thefuck gnome-calculator blueman htop screenfetch neofetch fish zsh tmux git wpa_supplicant google-chrome shadowsocks docker docker-compose openssh xorg fcitx xorg-xinit lightdm lightdm-gtk-greeter dmenu ttf-font-awesome ttf-ubuntu-font-family ttf-wps-fonts wqy-zenhei ttf-fireflysung

useradd -m erriy
passwd erriy
visudo
su erriy
chsh -s `which fish`
git clone git@github.com:Erriy/config.git
pyenv install 3.7.2 2.7.15
pyenv local 3.7.2 2.7.15
pip install -r ~/.config/scripts/requirements.txt

synclient syndaemon fontawesome amixer xbacklight fusuma

```