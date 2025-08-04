# Create a file and commit
echo "Hello Git" > file1.txt
git add file1.txt
git commit -m "Add file1"

# Now you realize you forgot another file
echo "Second file" > file2.txt
git add file2.txt

# Amend the last commit
git commit --amend

#Keep same message: Press :wq and Enter
# Change commit message: Press i and edit message (Add preparation -> Add amend and preparation), Press :wq and Enter
