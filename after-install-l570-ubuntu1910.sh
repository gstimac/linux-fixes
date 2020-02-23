#!/bin/bash

sudo apt install apt-transport-https curl vim git tlp vlc qbittorrent &&
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - &&
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
sudo apt update && sudo apt install brave-browser

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&
unzip awscliv2.zip &&
sudo ./aws/install

curl "https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip" &&
unzip terraform_0.12.21_linux_amd64.zip &&
sudo mv terraform /usr/local/bin/terraform

wget "https://download.jetbrains.com/python/pycharm-community-2019.3.3.tar.gz" &&
tar xvfz pycharm-community-2019.3.3.tar.gz &&
mv pycharm-community-2019.3.3.tar.gz ~

wget "https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb" &&
sudo apt install ./nordvpn-release_1.0.0_all.deb &&
sudo apt update &&
sudo apt install nordvpn
