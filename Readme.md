# Dotfiles Repository

This repository contains my personal dotfiles for configuring my workstation environment. These dotfiles can be applied to a local machine using Ansible.

## Features
- Managed with Ansible for easy application. 
- Tested on Fedora 41 - Gnome. 
- Currently includes Bash configurations and uBlock filters (uBlock needs to be applied manually)

## Prerequisites
Ensure you have the following installed on your system:
- **Ansible** 

## Applying the Dotfiles
To apply the dotfiles on your local machine, clone this repo and run:
```sh
ansible-playbook ansible/playbooks/setupDotFiles.yaml
```

## uBlock Filter Application
The repository includes custom uBlock filters for YouTube, but these need to be applied manually in the uBlock Origin extension for now. 