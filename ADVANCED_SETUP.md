# Advanced Ansible Setup

- This contains the steps taken to create a app running on port 3000, then port 80
- After this the Database machine was provisioned and /posts was enabled for the web app
	- This requires the app to connect to the DB

## Setting up the app on port 3000

- scp -r app/ vagrant@192.168.33.10:

- ansible-playbook app_setup.yml

- ssh vagrant@192.168.33.10

- cd app/

- npm install

- node app.js

- 192.168.33.10:3000 in browser

## Setting up the app on port 80

- scp -r app/ vagrant@192.168.33.10:

- scp nginx.default vagrant@192.168.33.10:

- ansible-playbook app_setup.yml

- ssh vagrant@192.168.33.10

- cd app/

- npm install

- node app.js

- 192.168.33.10 in browser

## Setting up DB and enabling /posts

scp -r environment/ vagrant@192.168.33.10:

scp -r app/ vagrant@192.168.33.10:

ansible-playbook app_db_setup.yml

ssh vagrant@192.168.33.10

export DB_HOST=mongodb://192.168.33.11:27017/posts

cd app

npm install

pm2 start app.js


## Useful links

https://medium.com/@smartsplash/using-scp-and-vagrant-scp-in-virtualbox-to-copy-from-guest-vm-to-host-os-and-vice-versa-9d2c828b6197

https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html#playbook-language-example

