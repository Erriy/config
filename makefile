
.PHONY: all i3 fcitx5
i3:

fcitx5:
	- mkdir -p ~/.local/share/fcitx5/punctuation
	ln -sf $(shell pwd)/local/share/fcitx5/punctuation ~/.local/share/fcitx5/punctuation/punc.mb.zh_CN


all: i3 fcitx5


