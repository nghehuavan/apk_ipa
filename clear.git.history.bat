@echo off
echo "Clear all history commit"
pause

git checkout --orphan latest_branch
git add .
git commit -m "clear history"
git branch -D main
timeout 5 > NUL
git branch -m main
git push -f origin main
pause


