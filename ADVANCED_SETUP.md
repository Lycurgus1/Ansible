# Automatically running the web app with posts enabled

### 1. Follow instructions on main readme to set up machines

- Follow up to step 8.
	- At this point you will have connected the controller server to the other machine
- You will need to have run the below command on your controller machine

```git clone https://github.com/Lycurgus1/NodeJSAppPipeline```


### 2. Run the app_db_setup playbook

```
vagrant ssh aws
cd /etc/ansible
ansible-playbook app_db_setup.yml
```

### 3. See posts on browser

```
192.168.33.10
http://192.168.33.10/Fibonacci/9
192.168.33.10/posts
```

## Common Errors

- Bad gateway
	- This is due to to the enviromenatl variable and nginx not being set up correctly


- Database not seeding on posts, insert the below line

```node seeds/seed.js```


## Useful links

https://medium.com/@smartsplash/using-scp-and-vagrant-scp-in-virtualbox-to-copy-from-guest-vm-to-host-os-and-vice-versa-9d2c828b6197

https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html#playbook-language-example

https://www.mydailytutorials.com/how-to-copy-files-and-directories-in-ansible-using-copy-and-fetch-modules/

# Next Iteration

- Make envivoremental variable persistent
	- Use bashrc file, replace existing one with your one that has DB_HOST on it
	- .bashrc file with below in it
	- export DB_HOST=mongodb://vagrant@192.168.33.11:27017/posts?authSource=admin

- Use bash file to auto set up servers
	- Got from humza
	- Use bash setup file.txt
