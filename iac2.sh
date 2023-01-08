#!/bin/bash

echo "Atualizando sistema..."

apt-get update
apt-get upgrade -y

echo "Instalando programas..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando aplicação..."

cd /tmp
wget https://github.com/DanielFelic/Web-Projects.git

echo "Copiando aplicação para diretório Apache..."

unzip master.zip
cd /tmp/Web-Projects-master/minimalist-website-2022
cp -R * /var/www/html/
