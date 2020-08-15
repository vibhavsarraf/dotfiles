#bin/bash echo -e "Creating ~/.config Directory"
echo "=============================="
if [ ! -d "$HOME/.config" ]; then
    echo "Creating ~/.config"
    mkdir -p "$HOME/.config"
fi

echo "Installing Oh-my-zsh"

curl -Lo install1.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh install1.sh --unattended
rm install1.sh
rm ~/.zshrc

echo "Insalling software"
sudo apt-get install software-properties-common
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt update
sudo apt install neovim

echo "Creating symlinks"

ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/bashrc ~/.bashrc
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/tmux.conf ~/.tmux.conf
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing Binaries"

bin_files=$( echo bin/* )
for file in $bin_files; do
  sudo cp $file /usr/local/bin/
done

echo "Installing vim-plug from neovim"
sudo curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
