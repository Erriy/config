define link
	- trash ~/.$(1)
	ln -sfT $(shell pwd)/$(1) ~/.$(1)
endef

.PHONY: all i3 fcitx5 xprofile picom volumeicon sound dunst

all: i3 fcitx5 xprofile picom volumeicon sound dunst

i3:
	$(call link,config/i3)

fcitx5:
	- mkdir -p ~/.local/share/fcitx5/punctuation
	$(call link,local/share/fcitx5/punctuation/punc.mb.zh_CN)
	$(call link,config/fcitx5)


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