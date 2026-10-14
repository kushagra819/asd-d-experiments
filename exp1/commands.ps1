# Experiment 1 - Version Control Operations using Git
# Kushagra Mehta, Roll No. 64 (2401064), Batch T13
# Commands in the order shown in ASD&D_Experiment01_64.pdf.
# Repository: https://github.com/kushagra819/python-calculator

# --- Identity ---
git config --global user.name "Kushagra Mehta"
git config --global user.email "kushagramehta21@gmail.com"

# --- Create the project and the repository ---
dir
mkdir python-calculator
cd python-calculator
git init
git status

# --- First commit ---
git add .
git status
git commit -m "Initial calculator project"
git branch -M main

# --- Second version: square function ---
git diff
git add .
git commit -m "Added square function"
git log
git log --oneline
git show

# --- Connect to GitHub and push ---
git remote add origin https://github.com/kushagra819/python-calculator.git
git remote -v
git ls-remote origin
git push -u origin main

# --- Branching and merging ---
git branch feature-square
git branch
git switch feature-square
git add .
git commit -m "Added cube function"
git switch main
git merge feature-square
git branch -d feature-square

# --- Rollback ---
git diff
git restore calculator.py          # discard an uncommitted change
git status
git add .
git commit -m "Added rollback demo"
git log --oneline
git revert a653e52                 # undo the "Added rollback demo" commit
git log --oneline
git push origin main

# --- Remote inspection, clone, pull, fetch ---
git config --list
git clone https://github.com/kushagra819/python-calculator.git python-calculator-clone
git pull origin main
git fetch
git remote show origin
