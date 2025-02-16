git checkout --orphan new_branch
git add *
git rm --cached "%CURRBAT%" -f
for %%I in (.) do set "Folder=%%~nxI"
if not "%Folder%"=="gits" (
  git rm --cached "%~nx0" -f
)
git branch -D main & git branch -m main
git commit -m "Add files via upload"
git status
pause
git push origin main -f