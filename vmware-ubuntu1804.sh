#!/bin/bash

apt install apt-transport-https curl vim git
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb

wget "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" &&
unzip awscliv2.zip &&
sudo ./aws/install

wget "https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip" &&
unzip terraform_0.12.21_linux_amd64.zip &&
mv terraform /usr/local/bin/terraform

snap install pycharm-community
snap install tfswitch
snap install keepassxc
snap install azure-cli --candidate
