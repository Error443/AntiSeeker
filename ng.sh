#!/bin/dash
# Разработал Tchelo Noob
# Перевёл error443
atualizar='\033[1;32m'
echo "$обновление kde..."
apt update && upgrade -y
apt install -y wget
clear
k='\033[01;32m'
echo
echo "${k}████████╗ ██████╗██╗  ██╗███████╗██╗      ██████╗ ";
echo "${k}╚══██╔══╝██╔════╝██║  ██║██╔════╝██║     ██╔═══██╗";
echo "${k}   ██║   ██║     ███████║█████╗  ██║     ██║   ██║";
echo "${k}   ██║   ██║     ██╔══██║██╔══╝  ██║     ██║   ██║";
echo "${k}   ██║   ╚██████╗██║  ██║███████╗███████╗╚██████╔╝";
echo "${k}   ╚═╝    ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝ ";
echo "${k} /_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/";
echo
echo "Вы хотите установить Ngrok | Do you want to install Ngrok? [Y/n]"
read opcao
case $opcao in
y)
echo
echo "Загрузка Termux-ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Не известная архитектура"
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "${k}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${k}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${k}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${k}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${k}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${k}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
echo
echo "Пример команды (ngrok http 80\nOu ngrok для справки)"
;;

n)
clear
echo "Ngroк не установлено :("
echo
esac



