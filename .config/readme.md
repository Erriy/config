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

## /etc/pacman.d/blackarch-mirrorlist

```
# Australia
# Server = http://blackarch.mirror.digitalpacific.com.au/blackarch/$repo/os/$arch
# Server = rsync://mirror.digitalpacific.com.au/blackarch/$repo/os/$arch

# Austria
# Server = http://mirror.easyname.at/blackarch/$repo/os/$arch
# Server = ftp://mirror.easyname.at/blackarch/$repo/os/$arch
# Server = rsync://mirror.easyname.at/blackarch/$repo/os/$arch

# China
 Server = https://mirrors.ustc.edu.cn/blackarch/$repo/os/$arch

# Denmark
# Server = http://mirrors.dotsrc.org/blackarch/$repo/os/$arch
# Server = ftp://mirrors.dotsrc.org/blackarch/$repo/os/$arch

# Ecuador
# Server = http://mirror.uta.edu.ec/blackarch/$repo/os/$arch
# Server = ftp://mirror.uta.edu.ec/blackarch/$repo/os/$arch
# Server = rsync://mirror.uta.edu.ec/blackarch/$repo/os/$arch
# Server = http://mirror.cedia.org.ec/blackarch/$repo/os/$arch
# Server = http://mirror.espoch.edu.ec/blackarch/$repo/os/$arch

# France
# Server = https://www.blackarch.org/blackarch/$repo/os/$arch
# Server = rsync://blackarch.org/blackarch/$repo/os/$arch
# Server = http://blackarch.tamcore.eu/blackarch/$repo/os/$arch
# Server = https://blackarch.tamcore.eu/blackarch/$repo/os/$arch
# Server = rsync://blackarch.tamcore.eu/blackarch/$repo/os/$arch
# Server = http://blackarch.leneveu.fr/blackarch/$repo/os/$arch
# Server = http://blackarch.pi3rrot.net/blackarch/$repo/os/$arch
# Server = https://mirror.adversec.com/blackarch/$repo/os/$arch
# Server = http://mirror.cyberbits.eu/blackarch/$repo/os/$arch
# Server = https://mirror.cyberbits.eu/blackarch/$repo/os/$arch

# Germany
# Server = http://ftp.halifax.rwth-aachen.de/blackarch/$repo/os/$arch
# Server = ftp://ftp.halifax.rwth-aachen.de/blackarch/$repo/os/$arch
# Server = rsync://ftp.halifax.rwth-aachen.de/blackarch/$repo/os/$arch

# Greece
# Server = http://ftp.cc.uoc.gr/mirrors/linux/blackarch/$repo/os/$arch
# Server = ftp://ftp.cc.uoc.gr/mirrors/linux/blackarch/$repo/os/$arch
# Server = rsync://blackarch@cc.uoc.gr/blackarch/$repo/os/$arch

# Great Britain
# Server = http://www.mirrorservice.org/sites/blackarch.org/blackarch/$repo/os/$arch
# Server = rsync://rsync.mirrorservice.org/blackarch.org/blackarch/$repo/os/$arch

# Ireland
# Server = http://ftp.heanet.ie/mirrors/blackarch/$repo/os/$arch

# Italy
# Server = http://blackarch.mirror.garr.it/mirrors/blackarch/$repo/os/$arch
# Server = rsync://blackarch.mirror.garr.it/mirrors/blackarch/$repo/os/$arch

# Japan
# Server = http://www.ftp.ne.jp/Linux/packages/blackarch/$repo/os/$arch
# Server = ftp://ftp.kddilabs.jp/Linux/packages/blackarch/$repo/os/$arch

# Netherlands
# Server = http://mirror.neostrada.nl/blackarch/$repo/os/$arch
# Server = https://mirror.neostrada.nl/blackarch/$repo/os/$arch
# Server = ftp://mirror.neostrada.nl/blackarch/$repo/os/$arch
# Server = rsync://mirror.neostrada.nl/blackarch/$repo/os/$arch

# Poland
# Server = http://ftp.icm.edu.pl/pub/Linux/dist/blackarch/$repo/os/$arch
# Server = ftp://ftp.icm.edu.pl/pub/Linux/dist/blackarch/$repo/os/$arch
# Server = rsync://ftp.icm.edu.pl/pub/Linux/dist/blackarch/$repo/os/$arch
# Server = gopher://ftp.icm.edu.pl/1/pub/Linux/dist/blackarch/$repo/os/$arch

# Russia
# Server = http://mirror.truenetwork.ru/blackarch/$repo/os/$arch
# Server = ftp://mirror.truenetwork.ru/blackarch/$repo/os/$arch
# Server = rsync://mirror.truenetwork.ru/blackarch/$repo/os/$arch
# Server = http://mirror.yandex.ru/mirrors/blackarch/$repo/os/$arch
# Server = ftp://mirror.yandex.ru/mirrors/blackarch/$repo/os/$arch
# Server = rsync://mirror.yandex.ru/mirrors/blackarch/$repo/os/$arch

# Singapore
 Server = http://download.nus.edu.sg/mirror/blackarch/$repo/os/$arch
# Server = https://download.nus.edu.sg/mirror/blackarch/$repo/os/$arch

# Sweden
# Server = http://mirror.zetup.net/blackarch/$repo/os/$arch

# Switzerland
# Server = http://mirror.easyname.ch/blackarch/$repo/os/$arch
# Server = ftp://mirror.easyname.ch/blackarch/$repo/os/$arch
# Server = rsync://mirror.easyname.ch/blackarch/$repo/os/$arch
# Server = https://mirror.tillo.ch/ftp/blackarch/$repo/os/$arch
# Server = http://mirror.tillo.ch/ftp/blackarch/$repo/os/$arch
# Server = ftpes://mirror.tillo.ch/blackarch/$repo/os/$arch
# Server = ftp://mirror.tillo.ch/blackarch/$repo/os/$arch
# Server = rsync://mirror.tillo.ch/blackarch/$repo/os/$arch

# Turkey
# Server = http://ftp.linux.org.tr/blackarch/$repo/os/$arch
# Server = ftp://ftp.linux.org.tr/blackarch/$repo/os/$arch
# Server = rsync://rsync.linux.org.tr/blackarch/$repo/os/$arch

# Taiwan
 Server = http://blackarch.cs.nctu.edu.tw/$repo/os/$arch
# Server = rsync://blackarch.cs.nctu.edu.tw/$repo/os/$arch
# Server = http://ftp.yzu.edu.tw/Linux/blackarch/$repo/os/$arch
# Server = ftp://ftp.yzu.edu.tw/Linux/blackarch/$repo/os/$arch
# Server = rsync://ftp.yzu.edu.tw/Linux/blackarch/$repo/os/$arch

# USA
# Server = http://blackarch.pr0s3c.nl/blackarch/$repo/os/$arch
# Server = https://blackarch.pr0s3c.nl/blackarch/$repo/os/$arch
# Server = https://mirrors.tuxns.net/blackarch/$repo/os/$arch
# Server = http://mirrors.tuxns.net/blackarch/$repo/os/$arch
# Server = rsync://mirrors.tuxns.net/blackarch/$repo/os/$arch
# Server = http://mirror.math.princeton.edu/pub/blackarch/$repo/os/$arch
# Server = rsync://mirror.math.princeton.edu/pub/blackarch/$repo/os/$arch
# Server = http://distro.ibiblio.org/blackarch/$repo/os/$arch
# Server = ftp://distro.ibiblio.org/blackarch/$repo/os/$arch
# Server = https://deadbeef.ninja/blackarch/$repo/os/$arch
# Server = http://mirror.team-cymru.com/blackarch/$repo/os/$arch
# Server = ftp://mirror.team-cymru.com/blackarch/$repo/os/$arch
# Server = rsync://mirror.team-cymru.com/blackarch/$repo/os/$arch
# Server = http://mirror.oss.maxcdn.com/blackarch/$repo/os/$arch
 Server = ftp://mirror.oss.maxcdn.com/blackarch/$repo/os/$arch
# Server = rsync://mirror.oss.maxcdn.com/blackarch/$repo/os/$arch

# Vietnam
# Server = http://f.archlinuxvn.org/blackarch/$repo/os/$arch
```

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

[blackarch]
Include = /etc/pacman.d/blackarch-mirrorlist

```


### 安装命令

``` shell
# 依赖包
sudo pacman -Syu i3-gaps i3lock notify-osd conky feh goldendict compton scrot gimp rofi thunar code xss-lock copyq networkmanager network-manager-applet sakura pyenv telegram-desktop calibre volumeicon vimix-gtk-themes-git light-locker evolution postman-bin  thefuck gnome-calculator blueman htop screenfetch neofetch fish zsh tmux git wpa_supplicant google-chrome shadowsocks docker docker-compose openssh xorg fcitx xorg-xinit lightdm lightdm-gtk-greeter dmenu ttf-font-awesome ttf-ubuntu-font-family ttf-wps-fonts wqy-zenhei ttf-fireflysung iftop
# 添加用户
useradd -m erriy
passwd erriy
visudo
su erriy
# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# 下载配置
git clone git@github.com:Erriy/config.git
pyenv install 3.7.2 2.7.15
pyenv local 3.7.2 2.7.15
pip install -r ~/.config/scripts/requirements.txt

# 忘了包含在哪个包里了
synclient syndaemon fontawesome amixer xbacklight fusuma

```