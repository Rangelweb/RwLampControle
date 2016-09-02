#!/bin/bash
#www.rwstudio.net46.net
#Efetue sua modificação, fazendo com que esse script seja melhorado versão/1.0
#A IDEIA AGORA É ADD UMA INTERFACE, ZENITY OU YAD.

echo "Use para - PARAR ou REINICIAR o apache2. Também havendo a possibilidade de instalar o phpmyadmin e EDITAR o php.ini"
echo
echo "Esse script foi feito para uso pessoal (Mint 18 Cinnamon)"
echo
echo "Aguarde 2 segundos..."
sleep 2
clear
echo "------Facilitando sua vida no Linux!----------"
echo
####MENU DE PROGRAMAS#####
echo "::Digite o numero e tecle enter ou para cancelar feche no (X)::

1-Instalar apache2
2-Instalar mysql
3-Instalar php7.0
4-Instalar phpmyadmin
5-Habilitar mcrypt mbstring
6-Editar php.ini (Editor Xed)
7-Reiniciar o apache2"

####INSTALAÇÃO DE PROGRAMAS#####
read programas
                              
if [ "$programas" = "1" ];
then  
   sudo apt-get install apache2

elif [ "$programas" = "2" ];
then
   sudo apt-get install mysql-server

elif [ "$programas" = "3" ];
then
   sudo apt-get install php7.0 libapache2-mod-php7.0 php7.0-mcrypt php7.0-curl php7.0-gd php7.0-cli php7.0-mysql

elif [ "$programas" = "4" ];
then
   sudo apt-get install phpmyadmin php-mbstring php-gettext

elif [ "$programas" = "5" ];
then
   sudo phpenmod mcrypt && sudo phpenmod mbstring

elif [ "$programas" = "6" ];
then
   sudo xed /etc/php/7.0/apache2/php.ini


elif [ "$programas" = "7" ];
then  
   sudo systemctl restart apache2
   
fi

####LOOP E VOLTA AO MENU#####
echo "Deseja instalar outro programa? [s/n]"
 read programas2

if [ "$programas2" = "s" ];
then 
 ./RwlampControle.sh
 
else
 exit
fi




