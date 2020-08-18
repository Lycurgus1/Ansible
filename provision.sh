#!/bin/bash

# This fle enables quick set up of a controller virtual machine
# It is a summary of what is broken down in the main readme

# The commands required to set up each vm

  sudo apt-get  update
  sudo apt-get install software-properties-common -y
  sudo apt-add-repository --yes --update ppa:ansible/ansible
  sudo apt-get install tree -y
  sudo apt-get install ansible -y
