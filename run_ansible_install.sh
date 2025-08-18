#!/bin/bash
echo "-------------------------Starting ansible install playbook-------------------------------"
sudo ansible-playbook -b --become-user $USER playbook.yml
echo "-------------------------Ansible install playbook finished-------------------------------"