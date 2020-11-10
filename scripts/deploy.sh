#!/usr/bin/expect

spawn ssh -p 500 remi@94.94.239.44.47
match_max 100000
expect "*?assword:*"
send -- "$password\r"
send -- "\r"

ansible-playbook -i /home/remi/Documents/correction-tp1/ansible/inventories/setup.yml /home/remi/Documents/correction-tp1/ansible/playbook.yml



