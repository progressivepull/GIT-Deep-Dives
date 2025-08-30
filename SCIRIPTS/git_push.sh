#!/bin/bash

# Navigate to the Git repository directory
cd /F/TRAINING/Knowledge_Transfer_Session_GIT/ || { echo "Error: Directory not found. Exiting."; exit 1; }

# Add all changes to the staging area
git add .

# Ask the user for a commit message
read -p "Enter commit message: " commitMessage

# Commit the changes with the provided message
git commit -m "$commitMessage"

# Push the committed changes to the remote repository
git push

echo "Git operations completed."