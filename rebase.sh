# Concept: Instead of merging my branch into yours, I’ll pretend I started from your latest commit and then re-apply my changes on top.

# Make sure you are on main and up to date
git checkout main

# Create a feature branch
git checkout -b feature-rebase

# Add first commit in feature branch
echo "Feature line 1" > rebase.txt
git add rebase.txt
git commit -m "Feature: add line 1"

# Add new commits to main. Simulate that someone else added changes to main while you were working:
git checkout main
echo "Main branch line" > main.txt
git add main.txt
git commit -m "Main: add main.txt"

# Your branch is now behind main
git log --oneline --graph --all

# Rebase feature branch onto main:
git checkout feature-rebase
git rebase main

# Handle conflicts (if any):
# Fix conflicts in files
git add <file>
git rebase --continue

# Verify:
git log --oneline --graph --all


# Interactive Rebase; Interactive mode lets you: Squash commits, Reorder commits, Edit commit messages
# Change pick to squash to merge commits. Change pick to edit to modify a commit
git rebase -i HEAD~3

# When to use rebase:
# Updating a branch before merging into main
# Cleaning up history before pushing
# Avoid rebasing public branches that others use (it rewrites history)

