# 🔁 GitHub Pull Request from a Fork

We have two GitHub Repositories Accounts:

https://github.com/browntruck246

https://github.com/progressivepull


# 1. Fork the Original Repository
To begin working with the PRODUCTION code, fork the PRODUCTION repository into your Sid repository by **first logging into your personal repository**, then navigating to the PRODUCTION repository, and then initiating the fork.

Click Fork (top-right corner).

This creates a copy under your GitHub account.

## 2. Clone Your Fork Locally

``` bash
git clone https://github.com/your-username/forked-repo.git
cd forked-repo
```

## 3. Connect to the Upstream Repository
This lets you pull changes from the original repo.

``` bash
git remote add upstream https://github.com/original-owner/original-repo.git
```

Verify the remotes:

``` bash
git remote -v
```

## 4. Create a New Branch for Your Work
``` bash
git checkout -b feature-branch-name
```

## 5. Make Your Changes
Edit files, add commits:

``` bash
git add .
git commit -m "Describe your changes"
```

## 6. Push Your Branch to Your Fork
``` bash
git push origin feature-branch-name
```

## 7. Create a Pull Request
Go to your fork on GitHub.

You’ll see a “Compare & pull request” button.

Click it, review your changes, and submit the PR to the original repo’s main branch (or whichever branch is appropriate).

# 🔄 Keeping Your Fork Updated
## 1. Fetch Changes from Upstream

``` bash
git fetch upstream
```

## 2. Merge Upstream Changes into Your Local Branch
``` bash
git checkout main
git merge upstream/main
```

## 3. Push Updated Main to Your Fork
``` bash
git push origin main
```

# 🧠 Summary
You fork → clone → connect to upstream → create a branch → make changes → push → open PR.

You keep your fork updated by pulling from upstream and merging.




 ## [Context](./../README.md)
