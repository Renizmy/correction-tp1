#!bin/bash
echo $vault_pass >> ansible/.vault_pass
ansible-vault view ansible/key/id_rsa_encrypted >> id_rsa
chmod 400 id_rsa
ansible-playbook -i ansible/inventories/setup.yml ansible/playbook.yml
