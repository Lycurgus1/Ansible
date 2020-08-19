#!/bin/bash

# This fle enables quick set up of the virtual machines

# Boot up servers

# Set up the controller server

  sudo apt-get update
  sudo apt-get install software-properties-common -y
  sudo apt-add-repository --yes --update ppa:ansible/ansible
  sudo apt-get install tree -y
  sudo apt-get install ansible -y

# Edit hosts file

# Enter other servers

# Update and upgrade them

# Enter ansible server

# Run playbook
