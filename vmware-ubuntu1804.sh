#!/bin/bash

apt install apt-transport-https curl vim git krb5-user
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb

wget "https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip" &&
unzip terraform_0.12.21_linux_amd64.zip &&
mv terraform /usr/local/bin/terraform

snap install pycharm-community
snap install keepassxc
snap install azure-cli --candidate
snap install kubectl
snap install aws-cli
