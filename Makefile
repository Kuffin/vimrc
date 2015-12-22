# vim: set noexpandtab:

.PHONY: install

all:

install:
	cp -R vim/ftplugin  ~/.vim
	cp -R vim/plugin    ~/.vim
	cp -R vim/syntax    ~/.vim
	cp -R vim/ftdetect  ~/.vim
	cp vimrc ~/.vimrc
	cp gvimrc ~/.gvimrc
