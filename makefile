
.PHONY: all i3 fcitx5
i3:
	- mkdir -p ~/.config/i3/
	ln -sf $(shell pwd)/config/i3/config ~/.config/i3/config

fcitx5:
	- mkdir -p ~/.local/share/fcitx5/punctuation
	ln -sf $(shell pwd)/local/share/fcitx5/punctuation ~/.local/share/fcitx5/punctuation/punc.mb.zh_CN


all: i3 fcitx5


