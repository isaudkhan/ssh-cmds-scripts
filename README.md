### 1. Generate a New SSH Key Pair
```
ssh-keygen
ssh-keygen -t rsa -b 4096
ssh-keygen -f ~/.ssh/my_custom_key
ssh-keygen -p -m PEM
```

### 2. Establish a Secure SSH Connection
```
ssh username@hostname
ssh username@hostname -p 2222
ssh -i ~/.ssh/my_custom_key username@hostname
ssh username@hostname "ls -la /var/www"
```
