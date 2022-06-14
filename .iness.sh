. ./.shcss.sh

# Essentials dependencies or sofware that will be automatically installed

askprompt(){
while true; do
    read -p " Are your running this script from a live ISO? [y/n]: "  input
    case $input in
        [yY]*)
            clear
            logo 
            break
            ;;
        [nN]*)
            OS
            sudo $os update
            sudo $os -y upgrade
            break
            ;;
         *)
            break
    esac
done
}

OS () {
echo
echo "$green Below is a list of all Operating Systems:  $end"
echo """
    $yellow Debian / Ubuntu / Mint Linux $end and friends users use $red apt $end command.
    $yellow CentOS / RHEL / Red Hat / Fedora Linux $end and friends users use $red yum $end command.
    $yellow Suse / OpenSUSE Linux $end users use $red zypper $end command.
    $yellow Slackware Linux $end users use $red slackpkg $end command.
    $yellow Arch Linux $end users use $red pacman $end command.
    $yellow Gentoo Linux $end users use $red emerge $end command.
    $yellow Alpine Linux $end users use $red apk $end command.
    $yellow MacOS $end users use $red pacman $end command.
    $yellow Windows $end users use $red apt $end command. (you will need to have WSL installed)
    """
    echo "What $red command $end does your OS use?: " 
    read os 
}

loader () {
clear
echo 
credits
sleep 1
echo Starting..
sleep 2
clear
}

credits () {
clear
echo 
echo Script created by: Jonathan Di Rico
echo https://www.yonasuriv.com/
echo
}

logo (){
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

## Scripts Start Here
loader
logo
echo
askprompt
