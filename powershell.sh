zsh_install (){
sudo apt -y install zsh
clear
}

fonts (){
mkdir -p ~/.local/share/fonts 
cp /fonts/* ~/.local/share/fonts
# cp "MesloLGS NF Regular.ttf" ~/.local/share/fonts
# cp "MesloLGS NF Bold.ttf" ~/.local/share/fonts
# cp "MesloLGS NF Italic.ttf" ~/.local/share/fonts
# cp "MesloLGS NF Bold Italic.ttf" ~/.local/share/fonts
# c-cache -f -v
clear
}

powerlevel (){
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
cp /core/* ~/
clear
}

logo (){
echo Starting...
sleep 2
clear
echo
echo "__________                              _________.__                          _________.__           .__  .__   ";
echo "\______   \______  _  __ ___________   /   _____/|__| ____   _____ _____     /   _____/|  |__   ____ |  | |  |  ";
echo " |     ___/  _ \ \/ \/ // __ \_  __ \  \_____  \ |  |/ ___\ /     \\__  \    \_____  \ |  |  \_/ __ \|  | |  |  ";
echo " |    |  (  <_> )     /\  ___/|  | \/  /        \|  / /_/  >  Y Y  \/ __ \_  /        \|   Y  \  ___/|  |_|  |__";
echo " |____|   \____/ \/\_/  \___  >__|    /_______  /|__\___  /|__|_|  (____  / /_______  /|___|  /\___  >____/____/";
echo "                            \/                \/   /_____/       \/     \/          \/      \/     \/           ";
echo 
}

zsh_install
fonts
powerlevel
logo
exec zsh


