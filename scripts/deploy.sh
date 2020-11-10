#!/bin/bash
echo $ssh_access >> ~/.id_rsa
ssh -p 500 -i ~/.id_rsa remi@94.239.44.47 ls -la ; ansible-playbook -i /home/remi/Documents/correction-tp1/ansible/inventories/setup.yml /home/remi/Documents/correction-tp1/ansible/playbook.yml



