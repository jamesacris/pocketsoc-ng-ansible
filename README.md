# pocketsoc-ng-ansible

## Usage

Host needs

- ansible
- git
- ansible collecttions:
```
ansible-galaxy collection install ansible.posix
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
