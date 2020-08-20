# Networking concepts

## Ansible Networking

- What we setup using Ansible and Virtual machines

![ansible_setup](images/ansible_setup.png)

- Use of AWS with Ansible creates hybrid cloud
        - This had security concerns as cloud does not handle security of data in transfer
        - Data security is gurannted by password encryption (Ansible vault so access keys hidden)

- Private cloud (local network/on premise storage) combined with public cloud
        - Public Cloud is AWS Data Storage
        - Hybrid cloud used by Government bodies, Passport no. stored on premise/private cloud
        - Website information, non - confidentail information stored on public cloud.
        - Part of disaster recovery


**Disaster recovery plan**

- Automatic redirection from AWS server to different server
- E.g. London server goes down and Ireland server takes up slakc
- AWS goes down and Azure used in multi cloud to ensure services still running

**Load balancing**

- On AWS is known as Elastic Load balancing
- Automaticaly distrubutes incoming traffic acorss multiple targets
        - E.g. EC2s, Containers, IPs and Lambda functions
- Uses three types
        - Application (HTTP and HTTPs for traffic)
        - Network (For VPCs and volatile traffic patterns)
        - Classic (basic balancing across EC2 instances build in EC2 classic network)


**AWS Route 53**

- A DNS service, part of disaster recovery plan
- AWS Route 53 used to automate user requests routing and assess health of servers
- Allows smart and automated traffic routing based on:
        - latency
        - endpoint(server) health
        - geographic location

**Mutable vs Immutable**

- Servers that can be entered with SSH and have software installed are mutable
- In immutable infastruture a server once created from image are immutable
        - More conistencty and reliablility
        - More predicatble deployment and less issues

- For immutable infastructure need to have setup things already
        - Needs comprehensive deployment automation
        - Fast server provisioning
        - Solutions for handling stateful or ephermeral data like logs

https://www.digitalocean.com/community/tutorials/what-is-immutable-infrastructure


## Automation Tools we have use

- Ansible
        - Infastrucuture as code
- Jenkins
        - Automates Continuous Integration, Delivery and Deployment
- Vagrant
        - Uses Dev environmnet tools
        - Provision script to auto set up server
- Cloud
        - Cloud formation AWS
        - Ansible has lots of transferable skills
        - Playbook can add hosts to install software easily on mutltiple machines
        - May need to change apt > yam but otherwise just need to change variables
        - Flexible and scalablae configuriaton management
