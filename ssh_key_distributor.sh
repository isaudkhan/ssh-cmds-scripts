#!/bin/bash
for user in ansible root               # Loops through ansible and root, with user set to each in turn.
do
  for os in ubuntu centos              # Loops through ubuntu and centos, with os set to each in turn.
  do
    for instance in 1 2 3              # Loops through instance numbers 1, 2, and 3, with instance set to each in turn.
    do

      # Copy SSH key to the target server for the current user, OS, and instance.
	  # sshpass -f password.txt: Automates password entry.
      # ssh-copy-id: Copies SSH key for passwordless login.
      # -o StrictHostKeyChecking=no: Disables host key checking.
      # ${user}@${os}${instance}: Constructs SSH login (e.g., ansible@ubuntu1).
	  
	  sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}  

    done                               
  done                                 
done                                   
