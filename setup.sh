#!/bin/sh
 
SOURCE_DIR=`pwd`
DESTINATION_DIR=~
DOTFILES=".zshrc-gozu .gitconfig .gitignore_global .vimrc .vim"

for F in $DOTFILES; do
	SF=$SOURCE_DIR/$F
	DF=$DESTINATION_DIR/$F
	if [ -f $SF ]; then
		if [ -f $DF ]; then
			echo "exist $DF"
		else
			echo "ln -s $SF $DF"
			ln -s $SF $DF
		fi
	fi
done

CONFIG_SOURCE_DIR=$SOURCE_DIR/.config
CONFIG_DESTINATION_DIR=~/.config
CONFIG_FILES="nvim ghostty"

for D in $CONFIG_FILES; do
	SD=$CONFIG_SOURCE_DIR/$D
	DD=$CONfiG_DESTINATION_DIR/$D
	if [ -f $SD ]; then
		if [ -f $DD ]; then
			echo "exist $DD"
		else
			echo "ln -s $SD $DD"
			ln -s $SD $DD
		fi
	else
		echo "do not exist $SD"
	fi
done

# 絶対パスに変換して.gitconfigに入るのでコマンド実行が必要
git config --global core.excludesfile ~/.gitignore_global
