#!/bin/bash

sudo apt -qq install -y apt-transport-https curl vim git tlp vlc qbittorrent

git clone https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bashrc
tfenv install 1.0.2 && tfenv use 1.0.2

wget -q "https://download.jetbrains.com/python/pycharm-community-2021.1.3.tar.gz" &&
tar xfz pycharm-community-2021.1.3.tar.gz &&
mv pycharm-community-2021.1.3 ~

curl -s https://baltocdn.com/helm/signing.asc | sudo apt-key add -
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt -qq update
sudo apt -qq install -y helm

sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt -qq update 
sudo apt -qq install -y kubectl

sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
