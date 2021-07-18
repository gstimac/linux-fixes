#!/bin/bash

sudo apt install apt-transport-https curl vim git tlp vlc qbittorrent &&

git clone https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bashrc
tfenv install 1.0.2 && tfenv use 1.0.2

wget "https://download.jetbrains.com/python/pycharm-community-2021.1.3.tar.gz" &&
tar xvfz pycharm-community-2021.1.3.tar.gz &&
mv pycharm-community-2021.1.3 ~

sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
