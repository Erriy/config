define link
	trash ~/.$(1)
	ln -sfT $(shell pwd)/$(1) ~/.$(1)
endef

.PHONY: all i3 fcitx5

all: i3 fcitx5

i3:
	- mkdir -p ~/.config/i3/
	$(call link,config/i3/scripts)
	$(call link,config/i3/config)

fcitx5:
	- mkdir -p ~/.local/share/fcitx5/punctuation
	$(call link,local/share/fcitx5/punctuation/punc.mb.zh_CN)
	$(call link,config/fcitx5)

