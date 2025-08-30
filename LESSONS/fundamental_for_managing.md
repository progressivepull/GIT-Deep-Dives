# Fundamental for Managing your Code with Git

This tutorial walks through the essential Git commands: git add, git commit -m, and git push. These commands are fundamental for managing your code with Git, allowing you to track changes, save them locally, and share them with a remote repository like GitHub.

# Prerequisites
* **Git installed:** Ensure Git is installed on your machine. You can download it from the official Git website.

* **Basic terminal/command line knowledge:** This tutorial assumes familiarity with navigating directories and executing commands in the terminal.

* **Local project:** A project folder on your computer that you want to manage with Git.

# 1. Initializing your repository (if not already done)
If this is a new project that's not yet under Git version control, the first step is to initialize a Git repository within your project directory:

1. Open your terminal or command prompt.

2. Navigate to your project's root directory using the cd command:

``` bash
 cd /path/to/your/project.
 ```

3. Initialize the Git repository:

``` bash
git init
 ```

This command creates a hidden .git directory within your project, marking it as a Git repository and allowing Git to start tracking your changes.

# 2. Adding changes to the staging area with git add

Before committing your changes, you need to tell Git which files you want to include in the next commit. This is done by adding them to the "staging area", also known as the "index". Think of it as preparing your changes for a snapshot.

* Add a specific file:
``` bash
git add filename.ext
```

This adds a particular file to thexte staging area.

* Add multiple specific files:
``` bash
git add file1.ext file2.ext
```
You can list multiple files to stage them all at once.

* Add all changes in the current directory:
``` bash
git add .
```
This command stages all new, modified, and deleted files within the current directory and its subdirectories.

* Add all changes in the entire repository:
``` bash
git add -A
```

Use this if you want to stage all changes throughout your entire repository, regardless of your current directory within it.

# 3. Review staged changes

``` bash
git status
```
This command shows which files are staged, modified, or untracked.


# 4. Saving changes with a commit: git commit -m "initial commit"

Once you've staged the desired changes, you can "commit" them. A commit is like taking a snapshot of your project's current state and saving it in the repository's history. The commit message provides a brief description of the changes made, which is essential for understanding your project's evolution.

* Commit staged changes with a message:

``` bash
git commit -m "Initial commit"
```

# 5. Pushing changes to a remote repository: git push

After committing your changes locally, you can share them with others by "pushing" them to a remote repository (e.g., on GitHub, GitLab).

1. Add the remote repository: If you haven't linked your local repository to a remote one, you'll need to do so first.

``` bash
git remote add origin https://github.com/USERNAME/REPOSITORY_NAME.git
```
2. Push your local commits to the remote repository

``` bash
git push -u origin main
```
* **origin:** Refers to the remote repository you added in the previous step.

* **main:** Specifies the branch you are pushing to (your default branch might be named master in older repositories, if so, replace main with master).

* **-u (or --set-upstream):** Sets the upstream tracking for the current branch, meaning future git push commands can be simpler, without needing to specify origin main

Once the upstream is set, you can push subsequent changes simply with:

``` bash
 git push
```
### Important considerations:

* **Always pull before pushing:** Before pushing your changes, it's a good practice to pull any updates from the remote repository to avoid merge conflicts: git pull.

* **Branches:** While this tutorial uses main (or master), you'll often work with different branches in real-world projects. You would push to the specific branch you're working on.

* **Authentication:** When pushing to GitHub, you may need to authenticate using a Personal Access Token (PAT) instead of your password.

# Ignore

**.gitignore** is a special file in Git used to specify which intentionally untracked files and directories Git should ignore.

## Why is it used?
* To prevent unwanted files from being committed: This includes things like:
    - Build artifacts (compiled code, executables).
    - Log files and other temporary files.
    - Configuration files with sensitive data (API keys, database credentials).
    - Editor/IDE specific configuration files.
    - Operating system-specific files like .DS_Store on macOS.
*  To keep repositories clean and focused: Ignoring unnecessary files reduces repository size and clutter, making it easier to manage and understand the project's evolution, especially when collaborating.

## Patterns

Inside the .gitignore file, you add patterns to specify which files and directories to ignore.

1. Each line represents a pattern.
2. Wildcards can be used:
    - * matches any sequence of characters (except /).
    - ? matches any single character (except /).
    - [...] matches any single character in a specified set or range.
3. A trailing slash / indicates that the pattern matches only directories.
4. A prefix ! negates the pattern, re-including files or directories that would otherwise be ignored.
5. A leading /** matches in all directories

## Example .gitignore patterns
* ***.log:** ignores all files ending with .log.
* **temp/:** ignores all files and subdirectories within the temp directory.
* **secrets.yaml:** ignores a specific file named secrets.yaml.
* **!README.md:** If *.md was previously ignored, this line re-includes README.md

## A collection of useful .gitignore templates
```
https://github.com/github/gitignore
```

# Demonstrate

Staging the code
``` bash
$ git add *
```

Commit the code to the Locally Repository
``` bash
$ git commit -m 'commit message'
```

Remove the code changes from Locally Repository to the GitHub Repository
``` bash
$ git push
```




# [Context](./../README.md)