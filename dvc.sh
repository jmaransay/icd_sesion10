#!/bin/sh
# Para evitar mensajes de error sobre stdin:
export DEBIAN_FRONTEND=noninteractive

# Actualizamos repositorios:
apt-get update
apt-get install unzip tree
apt-get install python3-pip
apt-get install python3.12-venv
export PATH=$PATH:/home/vagrant/.local/bin

apt-get install wget gpg
mkdir -p /etc/apt/keyrings
wget -qO - https://dvc.org/deb/iterative.asc | sudo gpg --dearmor -o /etc/apt/keyrings/packages.iterative.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.iterative.gpg] https://dvc.org/deb/ stable main" | sudo tee /etc/apt/sources.list.d/dvc.list
chmod 644 /etc/apt/keyrings/packages.iterative.gpg /etc/apt/sources.list.d/dvc.list
apt-get update
apt-get install dvc

# locate pip3


