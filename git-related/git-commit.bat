git show-ref --verify --quiet refs/heads/b2
if errorlevel 1 (
  git checkout -b b2
)
git add *
git rm --cached "git-exec2.bat" -f
git commit -m "%time:~0,5%"