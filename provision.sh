#!/bin/bash

# The commands required to set up each vm

  sudo apt-get  update
  sudo apt-get install software-properties-common -y
  sudo apt-add-repository --yes --update ppa:ansible/ansible
  sudo apt-get install tree -y
  sudo apt-get install ansible -y
