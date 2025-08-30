# Upstream Remote Synchronized with Original Fork Project

Git provides a powerful mechanism to manage and collaborate on projects with distributed repositories. When working with Git, you'll encounter the concepts of "origin" and "upstream" remotes.

* Origin refers to your personal fork of a repository, where you have read and write permissions.

* Upstream refers to the original repository from which you created your fork, and where the core development of the project takes place.

Common scenarios for using upstream remote:

1. **Keeping your fork updated:** To ensure your local fork stays current with the latest changes from the original project, you need to pull from the upstream remote.

2. **Contributing to the original project:** When you have made changes in your fork that you want to contribute back to the original project, you'll need to fetch and potentially rebase your work onto the upstream before creating a pull request

# Demonstrate

Code examples:
Here's a step-by-step example demonstrating how to work with an upstream remote:
1. Adding the **upstream remote**:
``` bash
git remote add upstream https://github.com/originalowner/repository-name.git
```

This command adds a new remote named "upstream" and points it to the URL of the original repository. You can verify this by running:
```bash
git remote -v
```
### Git commands for viewing remote repositories

In Git, to view your remote repositories, you can use the following commands:

* ```git remote:``` : This command lists the shortnames of the remote repositories configured for your local repository.

* ```git remote -v``` : This provides a more detailed view, showing the names and the associated URLs for both fetching and pushing operations for each remote repository.

Example output of git remote -v:

``` bash
origin https://github.com/username/repository.git (fetch)
origin https://github.com/username/repository.git (push)
upstream https://github.com/anotheruser/repository.git (fetch)
upstream https://github.com/anotheruser/repository.git (push)
```
### Explanation of the output:
* **origin:** This is the default name Git assigns to the remote repository from which your local repository was initially cloned.

* **upstream:** This is a common convention used to refer to the original repository when your repository is a fork of another project.
* **URLs:** These are the paths (either HTTPS or SSH) Git uses to interact with the remote repository.
(fetch)/(push): These indicate whether the URL is used for downloading (fetching) or uploading (pushing) content to and from the remote.

This should show you both your "origin" (your fork) and the "upstream" (the original repository).

2. Fetching updates from upstream:
``` bash
git fetch upstream
```

This command downloads all the changes (commits, files, and refs) from the upstream repository but doesn't merge them into your current branch.
3. Merging upstream changes into your local branch:
``` bash
git checkout main # Switch to the branch you want to update (e.g., main or master)
git merge upstream/main # Merge the fetched upstream changes into your local branch
```

This merges the changes from the upstream/main branch into your current local branch (e.g., main). If there are any conflicts during the merge, you'll need to resolve them manually.
4. Pushing updates to your fork:
``` bash
git push origin main # Push the updated local branch to your fork
```

After merging the upstream changes, push the updated local branch to your fork to keep it in sync.
5. (Optional) Rebasing your changes onto upstream:
If you are contributing changes to the original project and want to maintain a clean commit history, you can rebase your local branch onto the upstream branch instead of merging:

``` bash
git checkout my-feature-branch # Switch to your feature branch
git rebase upstream/main # Rebase your feature branch onto the upstream main branch
git push -f origin my-feature-branch # Force push to your fork (use with caution as rebase rewrites history)
```

### Note:
Rebasing rewrites the commit history and can be problematic if you have already shared your feature branch with others. Use git merge if you want to preserve the history of your feature branch.

### In summary:
Using the upstream remote is essential for keeping your fork synchronized with the original project and for contributing your changes back to it. Regularly fetching and merging (or rebasing) from the upstream ensures you are working with the most up-to-date code and helps avoid merge conflicts when submitting pull requests.

# [Context](./../README.md)