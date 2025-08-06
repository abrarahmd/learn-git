# Use Case:
# Instead of checking every commit one by one, it jumps halfway each time until it finds the exact commit where a bug appeared.

git checkout -b bisect-demo

# Create a working version (good commit)
echo "print('Hello, world!')" > app.py
git add app.py
git commit -m "Good commit: working version"
# Add commits, one with a bug

# Commit 2 (still good)
echo "print('Feature 1')" >> app.py
git add app.py
git commit -m "Good commit: add feature 1"

# Commit 3 (introduces bug)
echo "BUG LINE" >> app.py
git add app.py
git commit -m "Bad commit: introduce bug"

# Commit 4 (still bad)
echo "print('Feature 2')" >> app.py
git add app.py
git commit -m "Add feature 2"

# Start bisect
# We know: Last commit is bad. The very first commit was good.

git bisect start
git bisect bad   # Marks current commit as bad
git bisect good <commit-hash>
#Here <commit-hash> = the commit ID of the good commit (from git log).

# Git will now check out a middle commit

#If the bug is present:

git bisect bad

#If the bug is not present:

git bisect good


# End bisect
# Once Git finds the commit:

git bisect reset

#This brings you back to where you started.