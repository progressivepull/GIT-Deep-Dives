## Steps to set up SSH and GitHub with the Command Line


**Open Git Bash.** Change Directory
```
 cd /C/Users/whwtb/.ssh
```
 ![generate_public_key.png](./../IMAGES_STEPS/SSH_and_GitHub/change_folders.png)

Generate Public Key
```
ssh-keygen -t rsa -b 4096 -C john.j.cusey@irs.gov
```
Name Public Key
```
 github
 ```
 ![generate_public_key.png](./../IMAGES_STEPS/SSH_and_GitHub/generate_public_key.png)

Storing Public Key with agent
 ```
ssh-add github

```
![generate_public_key.png](./../IMAGES_STEPS/SSH_and_GitHub/stored_key.png)




# [Context](./../README.md)

