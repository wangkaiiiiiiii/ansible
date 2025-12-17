## 生成密钥

```sh
[root@test 1_配置SSH]# ansible-playbook generate-ssh-key.yml
```

## 分发

```sh
[ssh]
123.56.181.33
```

```sh
[root@test 1_配置SSH]# ansible all -k -K -m authorized_key -a "user='www' state='present' key='{{lookup('file', '~/.ssh/id_rsa.pub')}}'" -e "ansible_ssh_port=22222"
SSH password: zatAmqwRf9dYRFN
BECOME password[defaults to SSH password]: zatAmqwRf9dYRFN
```
```sh
[root@test 1_配置SSH]# ansible-playbook node-master.yaml

```
