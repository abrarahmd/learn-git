# We never squash directly on main — use a feature branch.
git checkout -b squash-demo

# Make several messy commits; First commit:
echo "Line 1" > squash.txt
git add squash.txt
git commit -m "Add first line"

# Second commit:
echo "Line 2" >> squash.txt
git add squash.txt
git commit -m "Add second line"

# Third commit:
echo "Line 3" >> squash.txt
git add squash.txt
git commit -m "Add third line"

# Check the log:
git log --oneline

# Interactive rebase to squash; We want to squash the last 3 commits into one:
git rebase -i HEAD~3

# In the editor pick abc123 Add first line pick\n def456 Add second line\n pick ghi789 Add third line
# Change it to: pick abc123 Add first line\n squash def456 Add second line\n squash ghi789 Add third line

# Edit the commit message:
Add squash.txt with three lines

# Verify Results:
git log --oneline

# Push:
git push origin squash-demo --force

# Why squash is powerful: Makes history clean & easy to read, groups related changes into one logical commit, helps during code review (one commit = one purpose)