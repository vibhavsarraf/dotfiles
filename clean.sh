#!/bin/bash

suffix=$( date +"%y-%m-%d-%H-%M-%S" )
files=( ".vimrc" ".zshrc" ".config/nvim" ".oh-my-zsh" ".bashrc" ".tmux.conf" )
dirs=( "/usr/local/bin" )

for file in ${files[@]}; do
  file=~/$file
  if [ -e $file ]; then
    mv $file $file-old-$suffix
    # echo "moving $file to $file-old-$suffix"
  fi
done

for dir in ${dirs[@]}; do
	if [ -e $dir ]; then
		sudo rm -rf $dir/*
	fi
done

