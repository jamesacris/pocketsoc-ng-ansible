# pocketsoc-ng-ansible

## Usage

Host needs

- ansible
- git
- ansible collecttions:
```
ansible-galaxy collection install ansible.posix community.docker
```

## Variables

`pocketsoc-ng_var.env` should be of the format

```
---
# Variables
salt: "$SALT"
admin_password_command: "$ADMIN_PASSWORD_COMMAND"
```

`admin_password_command` should be formulated to print the desired password to `stdout`, eg `openssl -base64 32`

## SSH

Start an ssh agent in the background in order to use a passphrase-protected key. Pasting the passphrase in each time is not feasible for many VMs and doesn't seem to work anyway.
`eval "($ssh-agent -s)"`
`ssh-add ~/.ssh/ansible_id_rsa`
