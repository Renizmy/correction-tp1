#!/bin/bash

sudo apt-get install sshpass
sshpass -p $password ssh remi@94.239.44.47
ansible-playbook -i /home/remi/Documents/correction-tp1/ansible/inventories/setup.yml /home/remi/Documents/correction-tp1/ansible/playbook.yml



