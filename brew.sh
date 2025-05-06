#!/bin/sh
# Para evitar mensajes de error sobre stdin:
export DEBIAN_FRONTEND=noninteractive

# Actualizamos repositorios:
# apt-get update


# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip-components 1 -C homebrew

eval "$(homebrew/bin/brew shellenv)"

echo 'eval "$(homebrew/bin/brew shellenv)"' >> /home/vagrant/.profile

brew update --force --quiet

brew install gh

# brew postinstall gcc

# brew update --force --quiet

# sudo -u vagrant echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/vagrant/.profile

# sudo -u vagrant eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
