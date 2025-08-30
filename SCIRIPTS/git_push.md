# Automate Staging, Commit, and Pushing code

# How to use the script

1. Make it executable: Open your terminal, navigate to the directory where you saved the script,
and run chmod +x git_push.sh.

``` bash
 $ chmod +x git_push.sh
 ```


2. Run the script: From the terminal, simply type ./git_push.sh and press Enter.

``` bash
 $ ./git_push.sh
 ```

 3. The script will prompt for a commit message; I provided generic message when not actively working on the codebase, I will default to ```init commit```.

 ``` bash
 Enter commit message: init commit
 ```

 # Note
 While not a single command for staging, committing, and pushing you can combine the staging and committing steps for already tracked files using the -a or --all flag with git commit.

* ```git commit --all -m "Your commit message" ```: This command will automatically stage all modified and deleted tracked files and then commit them with the provided message.

Then can push the code commits to the GitHub repository with the following command
* ``` git push ```

 # Output
 ``` bash
john@SMITH MINGW64 /C/TRAINING (main)
$ cd SCIRIPTS/

john@SMITH MINGW64 /C/TRAINING (main)
$ chmod +x git_push.sh

john@SMITH MINGW64 /C/TRAINING (main)
$ ./git_push.sh
warning: in the working copy of 'SCIRIPTS/git_push.sh', LF will be replaced by CRLF the next time Git touches it
Enter commit message: init commit
[main f0ae1c0] init commit
 2 files changed, 30 insertions(+)
 create mode 100644 SCIRIPTS/git_push.sh
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (6/6), 866 bytes | 45.00 KiB/s, done.
Total 6 (delta 3), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
remote:
remote: GitHub found 1 vulnerability on progressivepull/Knowledge_Transfer_Session_GIT's default branch (1 moderate). To find out more, visit:
remote:      https://github.com/progressivepull/GIT-Deep-Dives/security/dependabot/1
remote:
To github.com/progressivepull/GIT-Deep-Dives.git
   efbec9b..f0ae1c0  main -> main
Git operations completed.
```

# [Context](./../README.md)


