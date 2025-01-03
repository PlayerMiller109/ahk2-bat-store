git add *
git rm --cached "%~nx0" -f
git status
set /p commitMsg=commit: 
if "%commitMsg%" == "" set "commitMsg=%time:~0,5%"
git commit -m "%commitMsg%"
git status
pause
git push origin main