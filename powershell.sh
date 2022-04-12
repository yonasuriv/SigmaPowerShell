zsh_install (){
sudo apt -y install zsh
clear
}

fonts (){
mkdir -p ~/.local/share/fonts 
cp "MesloLGS NF Regular.ttf" ~/.local/share/fonts
cp "MesloLGS NF Bold.ttf" ~/.local/share/fonts
cp "MesloLGS NF Italic.ttf" ~/.local/share/fonts
cp "MesloLGS NF Bold Italic.ttf" ~/.local/share/fonts
fc-cache -f -v
clear
}

powerlevel (){
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
cp .p10k.zsh ~/
cp .zshrc ~/
clear
}

zsh_install
fonts
powerlevel
exec zsh
