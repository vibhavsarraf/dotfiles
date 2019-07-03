#bin/bash

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Creating symlinks"

echo -e "Creating ~/.config Directory"
echo "=============================="
if [ ! -d "$HOME/.config" ]; then
    echo "Creating ~/.config"
    mkdir -p "$HOME/.config"
fi

ln -s $PWD/oh-my-zsh ~/.oh-my-zsh
ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/nvim ~/.config/nvim
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

