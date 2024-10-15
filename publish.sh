#!/bin/bash
ansible mysql-master -k -K -m authorized_key -a "user='www' state='present' key='{{lookup('file', '~/.ssh/id_rsa.pub')}}'" -e "ansible_ssh_port=22222"
