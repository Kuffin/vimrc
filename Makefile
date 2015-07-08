# vim: set noexpandtab:

.PHONY: install

all:

install:
	cp -R vim/ftplugin ~/.vim
	cp -R vim/plugin ~/.vim
	cp vimrc ~/.vimrc
