# SSH trouble shooting guide to setup ssh connection between Ansible Controller and Agend nodes

## setting up ssh connection
### Only Ansible controller needs have Ansible installed on it
- ssh into each vagrant agend node 
- ``` vagrant ssh db ```
- Run the updata command first thing first
- ``` sudo apt-get update ```
- Next go to
- ``` cd etc/ssh ```
- next open sshd_config file
- ``` sudo nano sshd_config ```
- change below permissions
- ``` PermitRootLogin yes ``` 
- change authentication to yes
- ``` PasswordAuthentication yes ```
- save and exit the file
- restart the ssh service 
- ``` sudo systemctl restart ssh ```
- setup new password as vagrant on this occasion

- ``` sudo su -a ``` 
- ``` passwd ```
- you will be prompted to set new password
- Enter new password: 
- ```vagrant```
- ( you can set anypassword you like)
- All done in each agend node

### Back Inside Ansible Controller Machine

- $cd /home/vagrant/.ssh
- $ssh-copy-id root@[Agent IP]
	- Enter password
- Attempt login with `ssh 'root@[Agent IP]'`
- login with ssh vagrant@agent-ip-address
```

