#!/bin/bash
echo "-----------------Update and upgrade APT-----------------"
sudo apt update && sudo apt upgrade -y
echo "-------------------Install ansible----------------------"
sudo apt install ansible
echo "------------------Install ansible role vscode-----------"
sudo ansible-galaxy install gantsign.visual-studio-code
echo "------------------Install ansible role docker-----------"
sudo ansible-galaxy install geerlingguy.docker
echo "--------------------All tasks done----------------------"