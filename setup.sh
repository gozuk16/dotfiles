#!/bin/sh
 
SOURCE_DIR=`pwd`
DESTINATION_DIR=~
DOTFILES=".zshrc-gozu .gitconfig .gitignore_global .vimrc"

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

# 絶対パスに変換して.gitconfigに入るのでコマンド実行が必要
git config --global core.excludesfile ~/.gitignore_global
