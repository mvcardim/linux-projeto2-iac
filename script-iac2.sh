#!/bin/bash

echo "Atualizando o servidor..."
dnf update
dnf upgrade -y
dnf install apache2 -y
dnf install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/



