# Ansible

## Dependencies

**Git Bash**

- This is used to access and manipulate the machines
- Download it here (alongside other git software): https://git-scm.com/downloads


**Python**

- This is auto installed with Git Bash and Linx often however
- This shows the simplicity of Ansible as there is minimal dependencies

## Steps

### 1. Clone this repositry

- As per GitHub commands, fork then download. 

### 2. Run vagrant file

```vagrant up```

- This may take a while on the first go

### 3. Once the machines are up enter each and update them

```
vagrant status
vagrant ssh web/aws/db
sudo apt-get update
```
 
- Do this command for each machine

### 4. Make the AWS server the controller server

A. Install ansible (within the AWS server)

```
sudo apt-get install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
B. Check installation

```ansible --version```

C. Install tree

- This is a package manager

```sudo apt-get install tree```

D. Examine tree

```
cd /etc/ansible
tree
```

- This will display files in user friendly way

E. Create host entries

### 5. Test connection to other VMs

```
ping 192.168.33.10
ping 192.168.33.11
```

- This chould how bytes coming from the IPs
- However you do not have access to the servers yet

### 6. Set up access to the servers from the controller server (aws)

```sudo nano hosts```

- Add the below text into the file
- This creates hosts for connections to other servers

```
[web]
192.168.33.10 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant

[db]
192.168.33.11 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant

# [aws]
# 192.168.33.12 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant
```

## Infastructure as code (IAC)

**Definition**

- Speeds up process of configuration management
- Uses Ansible or orchetrastation

**Why is it effective**

- Ansible VM controller manages multiple servers
	- In real life may have up to 60 servers, so automatic control is needed

PIC PLACEHOLDER - Ansible_pic.PNG

## Ansible

**Why use Ansible**

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
