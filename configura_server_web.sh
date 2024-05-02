#!/bin/bash

# Atualizacoes do sistema
sudo apt update -y
sudo apt upgrade -y

# Instala o apache
sudo apt install apache2 -y

# Instala o unzip
sudo apt install unzip

# Baixa aplicacao para diretorio tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp

# Copia tmp para pasta apache
sudo cp /tmp/* /var/www/ -rf

echo "Pronto"