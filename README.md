# Ansible

## Infastructure as code (IAC)

**Definition**

- Speeds up process of configuration management
- Uses Ansible or orchetrastation

**Why is it effective**

- Ansible VM controller manages multiple servers
	- In real life may have up to 60 servers, so automatic control is needed

PIC PLACEHOLDER - Ansible_pic.PNG

## Ansible

**Why ansible(over other programs**

- Simple
	- Connect with SSH key into servers
- Agentless
	- No need for additional software on your software nodes
	- Much less dependencies. Often just need to run update command on machines
- Written in Python
	- Python automatically installed in linux, so not needed to be installed
- Playbooks are easy to read and edit
	- Mostly written in YAML, good compared to other solutions e.g. Puppet

**How it fits into DevOps**

- Open source
- Saves time through automation of configuration management
- Makes everything predictable, so enviroment is set up by uniform standard
- Reduces errors at run time, so saves money
- Doesn't care if machines are AWS, hybrid vagrant etc.

**How it works**

- Ansible installed on controller(type of virtual machine)
- Create script in YMI file using Ansible
- YAML = Yet another markup language
- Used in cyper security
	- Software cube used to detect potential threats
	- Adds IPs to subnets

## More resources

https://docs.ansible.com/ansible/latest/index.html
