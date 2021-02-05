define link
	- trash ~/.$(1)
	ln -sfT $(shell pwd)/$(1) ~/.$(1)
endef

.PHONY: all i3 fcitx5 xprofile picom volumeicon sound dunst font copyq pyenv zsh

all: i3 fcitx5 xprofile picom volumeicon sound dunst font copyq pyenv zsh

i3:
	$(call link,config/i3)

fcitx5:
	- mkdir -p ~/.local/share/fcitx5/punctuation
	git submodule update
	ln -sfT local/share/fcitx5/themes/Material-Color/theme-red.conf local/share/fcitx5/themes/Material-Color/theme.conf
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