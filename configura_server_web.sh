#!/bin/bash

# Atualizacoes do sistema
sudo apt update -y
sudo apt upgrade -y

# Instala o apache
sudo apt install apache2 -y

# Instala o unzip
sudo apt install unzip

# Baixa aplicacao para diretorio tmp
sudo rm -rf /tmp/*.zip
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp

# Copia tmp para pasta apache
sudo rm -rf /var/www/html/*
sudo cp /tmp/* /var/www/html -rf

sudo unzip /var/www/html/main.zip
sudo rm -rf main.zip

echo "Pronto"