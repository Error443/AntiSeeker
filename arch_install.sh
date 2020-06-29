echo '[!] Обновление...'
pacman -Sy > install.log
echo
echo '[!] Установка требований...'
echo '    Python3'
yes | pacman -S python3 python-pip --needed &>> install.log
echo '    PHP'
yes | pacman -S php --needed &>> install.log
echo '    ssh'
yes | pacman -S openssh --needed &>> install.log
echo '    Requests'
pip3 install requests &>> install.log
echo
echo '[!] Настройка разрешений...'
chmod 777 template/nearyou/php/info.txt
chmod 777 template/nearyou/php/result.txt
echo
echo '[!] Успешно!.'
