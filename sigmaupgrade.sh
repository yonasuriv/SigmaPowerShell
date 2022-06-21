. ./.shcss.sh
. ./.iness.sh

logo (){
clear
echo
echo "   ██████  ██▓  ▄████  ███▄ ▄███▓ ▄▄▄          ██▓███   ▒█████   █     █░▓█████  ██▀███    ██████  ██░ ██ ▓█████  ██▓     ██▓    ";
echo " ▒██    ▒ ▓██▒ ██▒ ▀█▒▓██▒▀█▀ ██▒▒████▄       ▓██░  ██▒▒██▒  ██▒▓█░ █ ░█░▓█   ▀ ▓██ ▒ ██▒▒██    ▒ ▓██░ ██▒▓█   ▀ ▓██▒    ▓██▒    ";
echo " ░ ▓██▄   ▒██▒▒██░▄▄▄░▓██    ▓██░▒██  ▀█▄     ▓██░ ██▓▒▒██░  ██▒▒█░ █ ░█ ▒███   ▓██ ░▄█ ▒░ ▓██▄   ▒██▀▀██░▒███   ▒██░    ▒██░    ";
echo "   ▒   ██▒░██░░▓█  ██▓▒██    ▒██ ░██▄▄▄▄██    ▒██▄█▓▒ ▒▒██   ██░░█░ █ ░█ ▒▓█  ▄ ▒██▀▀█▄    ▒   ██▒░▓█ ░██ ▒▓█  ▄ ▒██░    ▒██░    ";
echo " ▒██████▒▒░██░░▒▓███▀▒▒██▒   ░██▒ ▓█   ▓██▒   ▒██▒ ░  ░░ ████▓▒░░░██▒██▓ ░▒████▒░██▓ ▒██▒▒██████▒▒░▓█▒░██▓░▒████▒░██████▒░██████▒";
echo " ▒ ▒▓▒ ▒ ░░▓   ░▒   ▒ ░ ▒░   ░  ░ ▒▒   ▓▒█░   ▒▓▒░ ░  ░░ ▒░▒░▒░ ░ ▓░▒ ▒  ░░ ▒░ ░░ ▒▓ ░▒▓░▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░░ ▒░ ░░ ▒░▓  ░░ ▒░▓  ░";
echo " ░ ░▒  ░ ░ ▒ ░  ░   ░ ░  ░      ░  ▒   ▒▒ ░   ░▒ ░       ░ ▒ ▒░   ▒ ░ ░   ░ ░  ░  ░▒ ░ ▒░░ ░▒  ░ ░ ▒ ░▒░ ░ ░ ░  ░░ ░ ▒  ░░ ░ ▒  ░";
echo " ░  ░  ░   ▒ ░░ ░   ░ ░      ░     ░   ▒      ░░       ░ ░ ░ ▒    ░   ░     ░     ░░   ░ ░  ░  ░   ░  ░░ ░   ░     ░ ░     ░ ░   ";
echo "       ░   ░        ░        ░         ░  ░                ░ ░      ░       ░  ░   ░           ░   ░  ░  ░   ░  ░    ░  ░    ░  ░";
echo 
}

zsh_install (){
sudo $os -y install zsh
clear
}

fonts (){
mkdir -p ~/.local/share/fonts 
cp ./fonts/* ~/.local/share/fonts
# cp "MesloLGS NF Regular.ttf" ~/.local/share/fonts
# cp "MesloLGS NF Bold.ttf" ~/.local/share/fonts
# cp "MesloLGS NF Italic.ttf" ~/.local/share/fonts
# cp "MesloLGS NF Bold Italic.ttf" ~/.local/share/fonts
# c-cache -f -v
clear
}

powerlevel (){
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
clear
cp -rT ./core ~/
}

zsh_install
fonts
powerlevel
echo " Loading Sigma Power Shell 10000 configuration..."
sleep 3
logo
echo 
echo " If you want to do an advanced customization of your shell, please run: $green2 sigmaconfig $end"
echo
cp -rT ./core ~/
echo "exec zsh" > ~/.bashrc
exec zsh

