## 🔐 Steps to set up SSH and GitHub with the Command Line

# Introduction
SSH keys allow secure, password-free communication with GitHub. You’ll generate a key pair:

* Public key → uploaded to GitHub

* Private key → stored locally


# **Open Git Bash.** Change Directory
![change_folders.png](./../IMAGES_STEPS/SSH_and_GitHub/change_folders.png)
```
 cd /C/Users/<WINDOWS_ACCOUNT_NAME>/.ssh
```


# Generate Public Key
⚠️ Avoid using Windows Command Prompt—it may generate incompatible keys. Always use Git Bash.

![generate_public_key.jpg](./../IMAGES_STEPS/SSH_and_GitHub/generate_public_key.jpg)

```
ssh-keygen -t rsa -b 4096 -C "progressivepull@gmail.com"
```
Save file as: github

 # Add SSH Key to Agent

Storing Public Key with agent
 ```
ssh-add github

```

## 🧨 Common Error

![](./../IMAGES_STEPS/SSH_and_GitHub/common_error.png)

* Could not open a connection to your authentication agent.

## ✅ Solution

![stored_key.png](./../IMAGES_STEPS/SSH_and_GitHub/stored_key.png)

``` bash
eval "$(ssh-agent -s)"
ssh-add github
```

# Upload Public Key to GitHub

1. Open: /C/Users/<WINDOWS_ACCOUNT_NAME>/.ssh

2. Copy contents of id_rsa.pub
![public_key.jpg](./../IMAGES_STEPS/SSH_and_GitHub/public_key.jpg)

3. Navigate to GitHub Profile Account
   
![github_profile.jpg](./../IMAGES_STEPS/SSH_and_GitHub/github_profile.jpg)

-  * select **setting**

![setting.jpg](./../IMAGES_STEPS/SSH_and_GitHub/setting.jpg)


4. Go to GitHub Profile → Settings → SSH and GPG Keys
   
![SSH_and_GPP_Keys.jpg](./../IMAGES_STEPS/SSH_and_GitHub/SSH_and_GPP_Keys.jpg)

5. Click New SSH Key, paste the copied key (MAKE SURE YOU USES THE PUBLIC KEY NOT THE PRIVATE KEY)

![uploading_key.jpg](./../IMAGES_STEPS/SSH_and_GitHub/uploading_key.jpg) 


# [Context](./../README.md)

