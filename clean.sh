#!/bin/bash

suffix=$( date +"%y-%m-%d-%H-%M-%S" )
files=( ".vimrc" ".zshrc" ".config/nvim" ".oh-my-zsh" )

for file in ${files[@]}; do
  file=~/$file
  if [ -e $file ]; then
    mv $file $file-old-$suffix
    # echo "moving $file to $file-old-$suffix"
  fi
done

