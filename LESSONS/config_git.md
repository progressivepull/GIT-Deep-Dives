# Configuration Git

## Git configuration Settings

To list all of your Git configuration settings, you can use the git config --list command. This command will display all settings that Git can find, including system, global, and local configurations.

Here's a breakdown of the command and its variations:
* ```git config --list:``` Lists all configuration settings that are currently in effect, from all scopes (system, global, and local).

* ```git config --list --show-origin:```Lists all configuration settings along with the file paths where they are defined. This is useful for understanding the hierarchy and origin of each setting.

* ```git config --list --system:``` Lists only the system-level configuration settings. These settings apply to every user and all repositories on the system.

* ```git config --list --global:``` Lists only the global configuration settings. These are user-specific settings that apply to all repositories you work with.

* ```git config --list --local:``` Lists only the local (repository-specific) configuration settings. These settings are specific to the current repository.

Understanding the configuration hierarchy
Git's configuration settings are organized in a hierarchical structure, where settings in one level can override settings in the levels above it. The order of precedence is as follows:

1. System-level: These are the broadest settings, applied to all users and all repositories on the system.

2. Global-level: These settings are user-specific and can override system-level settings.

3. Local-level: These settings are specific to a single repository and can override both system and global settings.

When you use the ```git config --list``` command, it displays the effective configuration at your current location, taking into account this hierarchy. If a setting is defined in multiple places, Git will use the value from the lowest level of precedence. For example, if ```user.name``` is set at both the global and local levels, the local value will be used within that particular repository.


## Showing all the configurations.

``` bash
$ git config --list
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
http.sslbackend=openssl
http.sslcainfo=C:/Program Files/Git/mingw64/etc/ssl/certs/ca-bundle.crt
core.autocrlf=true
core.fscache=true
core.symlinks=false
pull.rebase=false
credential.helper=manager
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=master
user.name=John Smith
user.email=progressivepull@gmail.com
core.repositoryformatversion=0
core.filemode=false
core.bare=false
core.logallrefupdates=true
core.symlinks=false
core.ignorecase=true
remote.origin.url=git@github.com:progressivepull/GIT-Deep-Dives.git
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.main.remote=origin
branch.main.merge=refs/heads/main
```

Git associates the name and email with each commit, storing this information as part of the commit's metadata.
``` bash
user.name=John Smith
user.email=progressivepull@gmail.com
```

## 🌍 Change Global Git Username and Email
This affects all repositories on your system:
``` bash
git config --global user.name "Your New Name"
git config --global user.email "yournewemail@example.com"

```

## 📁 Change Local Git Username and Email
This affects only the current repository:
``` bash
git config user.name "Your New Name"
git config user.email "yournewemail@example.com"

```

## Show the commit history.
```
$ git log
commit c1cdacf337db5d140926d56bb7c31f25d98ad5df (HEAD -> main, origin/main, origin/HEAD)
Author: John Smith <progressivepull@gmail.com>
Date:   Wed Aug 20 14:40:13 2025 -0400

    init commit
```
1. ```commit c1cdacf337db5d140926d56bb7c31f25d98ad5df```
* ```commit``` : This simply indicates that this line represents a commit in the Git repository.

* ```c1cdacf337db5d140926d56bb7c31f25d98ad5df:``` This is the commit's unique SHA-1 hash. Every commit in Git is identified by a 40-character hexadecimal string, a cryptographic hash of its contents and metadata, according to Graphite and. This hash serves as a unique identifier for the commit, ensuring its integrity and allowing you to reference it specifically within the repository. Git uses this hash to uniquely identify each change made to the repository.

2. ```(HEAD -> main, origin/main, origin/HEAD)```
* ```HEAD```: This is a symbolic reference that always points to the current commit you are working on. In this case, ```HEAD``` is pointing to the main branch, indicating that you are currently on that branch. In other words, ```HEAD``` tells you where you are standing in the repository right now.

* ```-> main```: This signifies that your local ```HEAD``` is pointing to the ```main``` branch. So, if you were to make a new commit, it would be added to the main branch.

* ```origin/main```: This is a remote-tracking branch. It represents the state of the ```main``` branch on the remote repository named ```origin```. When you fetch or pull changes from the remote, this reference updates to reflect the latest state of the remote's main branch.

* ```origin/HEAD```: This is a symbolic reference within the remote repository (```origin```). It indicates the default branch on the remote that origin's ```HEAD``` points to, which is typically main or master.

3. ```Author: John Smith <progressivepull@gmail.com>```
* ```Author```: This line specifies the author of the commit, the individual who made the changes in this commit.

* ```John Smith <progressivepull@gmail.com>```: This provides the name and email address of the author. The author is the person who originally wrote the changes in a commit, which may differ from the committer in some scenarios.

4. ```Date: Wed Aug 20 14:40:13 2025 -0400```
* ```Date```: This indicates the timestamp when the commit was created, according to Graphite and.
Wed Aug 20 14:40:13 2025 -0400: This is the date and time of the commit. The -0400 represents the timezone offset from Coordinated Universal Time (UTC), meaning it's 4 hours behind UTC. This is the "author date" when the commit was originally created, as distinct from the "commit date", which might change if the commit is amended or rebased, according to Microsoft Community and.

5. ```init commit```
* ```init commit```: This is the commit message. It's a brief description of the changes introduced in this commit. "init commit" is a common convention for the very first commit in a Git repository, signifying the initialization of the project and its version history. A good commit message explains the "what" and "why" of the changes, not necessarily the "how".

# [Context](./../README.md)
