#!/bin/bash

# Make this file executable.
# chmod 754 run_this_spell.sh

# Force link BashRC and Bash_Profile files to the files with same name in Home directory.

ln -s --force "$PWD"/bashrc ~/.bashrc
ln -s --force "$PWD"/bash_profile ~/.bash_profile

# Force link Firefox.js to the system wide Mozilla Firefox configuration under /etc
# I only have 1 user (me) using my Work-Station so this does not effect me. If you have multiple users, than you can either (i) Make this a system wide configuration or (ii) Force link this file under ~/.mozilla/firefox/<**default**>/user.js file - This will only effect you.

sudo ln -s --force  "$PWD"/firefox.js /etc/firefox/pref/firefox.js
