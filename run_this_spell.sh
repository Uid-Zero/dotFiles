#!/bin/bash

# Make this file executable.
# chmod 754 run_this_spell.sh

# Force link BashRC and Bash_Profile files to the files with same name in Home directory.

ln -s --force "$PWD"/bashrc ~/.bashrc
ln -s --force "$PWD"/bash_profile ~/.bash_profile
