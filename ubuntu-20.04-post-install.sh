#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
sudo apt update -y
sudo apt -qq install -y apt-transport-https curl neovim htop git qbittorrent

git clone https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bashrc
~/.tfenv/bin/tfenv install 1.0.8 && tfenv use 1.0.8

wget -q "https://download.jetbrains.com/python/pycharm-community-2021.2.2.tar.gz" &&
tar xfz pycharm-community-2021.2.2.tar.gz &&
mv pycharm-community-2021.2.2 ~

curl -s https://baltocdn.com/helm/signing.asc | sudo apt-key add -
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt -qq update
sudo apt -qq install -y helm

sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt -qq update 
sudo apt -qq install -y kubectl

sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
