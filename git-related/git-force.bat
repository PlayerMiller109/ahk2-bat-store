git checkout --orphan new_branch
git add *
git rm --cached "git-exec2.bat" -f
git branch -D main & git branch -m main
set /p commitMsg=commit: 
if "%commitMsg%" == "" set "commitMsg=Add files via upload"
git commit -m "%commitMsg%"
git status
pause
git push origin main -f