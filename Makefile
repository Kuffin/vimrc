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
	cp proverif-pv.vim ../../.vim/vundle/vim-xverif/syntax/proverif-pv.vim
	cp c.vim ../../.vim/vundle/vim-syntax-extra/after/syntax/c.vim
