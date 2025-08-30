# 🔁 GitHub Pull Request from a Fork

## Getting the Code form the Organization's Production Code Repository

You can clone the fork directly from the organization's production code repository. All project repositories are owned and maintained by the organization rather than individual contributors. This structure is especially effective for managing company-wide initiatives or coordinating large open-source efforts.

![enterprise.jpg](./../IMAGES_STEPS/Forking/enterprise.jpg)

You have access to the product repositories for all of your company's divisions.

![organization.jpg](./../IMAGES_STEPS/Forking/organizations.jpg)

To edit the README.md file and submit a change to the upstream repository:
1. Navigate to the README.md file in your repository.
2. Click the pencil icon to edit the file directly in your browser.
3. Make your desired changes.

# 🛠️ Progressive Pull and Worker Codebases
We are going copy code from the Progressive Pull to the Worker Repositories. 

![GitHub_PPO_Profile.png](./../IMAGES_STEPS/Forking/GitHub_PPO_Profile.png)

https://github.com/progressivepull

Setting Up the Worker Environment You'll create a worker who will fork the production codebase. This forked version will be used for development or task-specific operations, separate from the main production environment.

![GitHub_Tom_Johnson_PPO_Worker.png](./../IMAGES_STEPS/Forking/GitHub_Tom_Johnson_PPO_Worker.png)

https://github.com/browntruck246


# 1. Fork the Original Repository
1. Log In First, log in using the designated account. Once logged in, you’ll see your profile icon in the top corner, confirming your identity.

![ppo_account.jpg](./../IMAGES_STEPS/Forking/ppo_account.jpg)  

2. Locate the Repository Navigate to the Progressive Pull repository. You’ll see the repository name (e.g., “Green-Leaf”) clearly displayed near the top of the page, along with your logged-in username.

![fork_webpage.jpg](./../IMAGES_STEPS/Forking/fork_webpage.jpg)

## 🍴 Forking the Repository
Initiate the Fork Click the Fork button in the top-right corner of the repository page.

![forking_button.jpg](./../IMAGES_STEPS/Forking/forking_button.jpg)

Select Fork Options When prompted, make sure to uncheck the option that says “Copy only the main branch.” Instead, choose to copy all branches and code to ensure a complete fork.

![create_fork.jpg](./../IMAGES_STEPS/Forking/create_fork.jpg)

Create the Fork Click Create Fork to finalize the process.

## 2. Clone Your Fork Locally

``` bash
git clone https://github.com/your-username/forked-repo.git
cd forked-repo
```

## 3. Connect to the Upstream Repository
This lets you pull changes from the original repo.

![upstream.png](./../IMAGES_STEPS/Forking/upstream.png)

``` bash
git remote add upstream https://github.com/original-owner/original-repo.git
```

Verify the remotes:

``` bash
git remote -v
```

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

# [Context](./../README.md)
