#!/bin/bash

echo "Atualizando o servidor..."
dnf update
dnf upgrade -y
dnf install httpd -y
systemctl start httpd.service
chkconfig --levels 235 httpd on
dnf install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
sudo su
cp -R * /var/www/html/



