#!/bin/sh
# Para evitar mensajes de error sobre stdin:
export DEBIAN_FRONTEND=noninteractive

# Actualizamos repositorios:
apt-get update

apt-get install -y unzip tree

apt-get install -y python3-pip

apt-get install -y python3.10-venv

# locate pip3


