#!bin/bash
touch .vault_pass
echo $vault_pass >> .vault_pass
ansible-vault view encrypted/id_rsa_encrypted >> id_rsa
chmod 400 id_rsa
ansible-playbook -i ansible/inventories/setup.yml ansible/playbook.yml
