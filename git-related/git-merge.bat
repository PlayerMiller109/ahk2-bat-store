git checkout main
git merge --squash b2
set /p commitMsg=commit: 
if "%commitMsg%" == "" set "commitMsg=Merge %time:~0,5%"
git commit -m "%commitMsg%"
git branch -D b2