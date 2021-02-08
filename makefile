define link
	- trash ~/.$(1)
	ln -sfT $(shell pwd)/$(1) ~/.$(1)
endef

targets = i3 fcitx5 xprofile picom volumeicon sound dunst font copyq pyenv zsh conky lightdm

.PHONY: $(targets)

all: $(targets)

init:
	git submodule update

i3:
	$(call link,config/i3)

fcitx5:
	- mkdir -p ~/.local/share/fcitx5/punctuation
	- trash ~/.local/share/fcitx5/themes/Material-Color/theme.conf
	ln -sfT $(shell pwd)/local/share/fcitx5/themes/Material-Color/theme-red.conf ~/.local/share/fcitx5/themes/Material-Color/theme.conf
	$(call link,local/share/fcitx5/punctuation/punc.mb.zh_CN)
	$(call link,config/fcitx5)
	$(call link,local/share/fcitx5/pinyin/dictionaries)
	$(call link,local/share/fcitx5/themes)

xprofile:
	$(call link,xprofile)

picom:
	$(call link,config/picom.conf)

volumeicon:
	$(call link,config/volumeicon)

sound:
	$(call link,asoundrc)

dunst:
	$(call link,config/dunst)

font:
	$(call link,fonts)

copyq:
	$(call link,config/copyq)

pyenv:
	$(call link,pyenv)

zsh:
	$(call link,zshrc)

conky:
	$(call link,config/conkyrc)

lightdm:
	sudo ln -sfT $(shell pwd)/lightdm/lightdm.conf /etc/lightdm/lightdm.conf
	sudo ln -sfT $(shell pwd)/lightdm/slick-greeter.conf /etc/lightdm/slick-greeter.conf
	sudo ln -sfT $(shell pwd)/wallpaper/gentoo1.png /etc/lightdm/wallpaper
