### 1. Generate a New SSH Key Pair
```
ssh-keygen
ssh-keygen -t rsa -b 4096
ssh-keygen -f ~/.ssh/my_custom_key
ssh-keygen -p -m PEM
```

### 2. Remove Inherited Permissions and Grant Read Permissions for SSH Key
```
For Windows:
icacls "id_rsa.pem" /inheritance:r
icacls "id_rsa.pem" /grant:r "$($env:USERNAME):(R)"

For Linux:
chmod 400 id_rsa.pem
```

### 3. Establish a Secure SSH Connection
```
ssh username@hostname
ssh username@hostname -p 2222
ssh -i ~/.ssh/my_custom_key username@hostname
ssh username@hostname "command"
```

### 4. SSH Login with a Password
```
sshpass -p 'password' ssh username@hostname
sshpass -p 'password' ssh username@hostname "command"
```

### 5. Copy SSH key to Remote Server
```
scp id_rsa.pub username@hostname:/path/
scp -i id_rsa.ppk id_rsa.pem username@hostname:/path/
scp -i id_rsa id_rsa.pub username@hostname:/path/
```

### 6. Copy the Public Key to a Remote Server
```
ssh-copy-id username@hostname
ssh-copy-id -i id_rsa.pub username@hostname
```

### 7. Copy SSH Key with Password Automation
```
sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no username@hostname
```

### 8. Automate SSH Key Deployment for Multiple Users and Instances
* [Download ssh_key_distributor.sh](https://github.com/isaudkhan/ssh-cmds-scripts/raw/main/ssh_key_distributor.sh)

