# Commit 1
echo "Line 1" > reset.txt
git add reset.txt
git commit -m "Add line 1"

# Commit 2
echo "Line 2" >> reset.txt
git add reset.txt
git commit -m "Add line 2"

# Commit 3
echo "Line 3" >> reset.txt
git add reset.txt
git commit -m "Add line 3"

# Check history:
git log --oneline

# Soft Reset:
git reset --soft HEAD~1

# Mixed Reset:
git reset --mixed HEAD~1

# Hard Reset:
git reset --hard HEAD~1

# When to use which:
 
# Soft → “Oops, wrong commit message” or “I need to add more changes before committing again”

# Mixed → “I committed too early, I want to edit files before recommitting”

# Hard → “Throw it away completely” (dangerous — use only if sure)