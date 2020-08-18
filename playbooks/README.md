app_db_setup.yml  app_setup.yml  db_setup.yml  reverse_proxy_setup.yml

# What are these?

- These are playbooks used with ansible
- Theory for this is contained in the Ansible Theory readme

## App_db_setup

- This is a combination of my app and db setup playbooks
- It sets up both the app and databse server
	- Mongod is installed on database
	- App has various software installed, and is runn

## App_setup

- This sets up the app to run on port 3000

## DB_setup

- This sets up the db and installs mongodb.

##  Reverse_proxy setup

- This sets up the app to run on port 80
