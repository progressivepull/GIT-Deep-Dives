# Show the commit history

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

2. ```init commit```
* ```init commit```: This is the commit message. It's a brief description of the changes introduced in this commit. "init commit" is a common convention for the very first commit in a Git repository, signifying the initialization of the project and its version history. A good commit message explains the "what" and "why" of the changes, not necessarily the "how".

# To see the commit history starting from three commits back

``` bash
$ git log HEAD~3..HEAD
```
This command shows the commits between HEAD~3 (the fourth-to-last commit) and HEAD (the most recent commit). The .. range notation excludes the starting commit, effectively showing the last three commits.

# Compare Commit

if you want to compare commit def5678 with the newer commit abc1234, your command would be:

``` bash
git diff def5678 abc1234
```

# Why would you uses git fetch?

 The main reason to use git fetch is to **safely update your local repository with changes from a remote repository without affecting your current local work**. Unlike git pull, which immediately merges the changes, git fetch is a non-destructive way to inspect what's new in a remote branch before you integrate it.


# Checking for merge conflicts between local and fetched branches

You can compare a local branch with its remote-tracking branch after a git fetch by using git diff. This allows you to inspect changes and potential merge conflicts before you actually perform a merge or rebase, which can help prevent unintended issues.

## Example scenario
In this example, your local repository's main branch has diverged from the remote origin/main. You have added a new line of code locally, while another developer has pushed a different change to the remote branch.

1. Fetch the latest changes
First, run git fetch to download the latest commits from the remote repository without integrating them into your local branch.

``` bash
git fetch origin
```

2. Compare your local branch to the remote-tracking branch
Next, use git diff to see exactly what has changed between your **local main branch** and the **remote's origin/main**

``` bash
git diff main origin/main
```
The output might look something like this, indicating competing changes in the same file (README.md):

```
diff --git a/README.md b/README.md
index 1234567..7890abc 100644
--- a/README.md
+++ b/README.md
@@ -1,3 +1,5 @@
 # My Project
-This is the initial version of the project.
+This is the updated version of the project.
+
+This line was added locally.
```

In this diff output:
* Lines preceded by + indicate additions.
* Lines preceded by - indicate deletions.
* In a real conflict, Git would show both sets of changes.

3. Perform a test merge without committing

For a more direct look at where conflicts will occur, you can perform a merge with the --no-commit and --no-ff (no fast-forward) flags. This will merge the remote changes into your local branch and stop before committing, leaving the merge conflicts in your working directory.

``` bash
git merge --no-commit --no-ff origin/main
```

If a conflict exists, Git will pause and output a message similar to:

```
Automatic merge failed; fix conflicts and then commit the result.
```

4. Check the merge status and identify conflicts
After the test merge, run git status to see a list of files with merge conflicts.

``` bash
git status
```

The output will show the conflicting files under "Unmerged paths":

``` bash
On branch main
You have unmerged paths.
(fix conflicts and run "git commit")
(use "git add <file>..." to mark resolution)

Unmerged paths:
  both modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")

```

5. View the conflicts in the file

Open README.md in a text editor to see the merge conflict markers that Git inserted. Copy the file to your desktop.

```
<<<<<<< HEAD
This line was added locally.
=======
This is the updated version of the project.
>>>>>>> origin/main
```

* ```<<<<<<< HEAD```: Indicates the beginning of the changes from your local branch.
* ```=======```: Separates the two conflicting versions.
* ```>>>>>>> origin/main```: Indicates the end of the changes from the remote branch.

6. Clean up the test merge
After reviewing the conflicts, you can abort the merge to return your branch to its original state.

``` bash
git merge --abort
```


# [Context](./../README.md)