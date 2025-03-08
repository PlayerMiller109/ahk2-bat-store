git checkout --orphan new_branch
git add *
git rm --cached "%CURRBAT%" -f
git rm --cached "%~nx0" -f
git branch -D main & git branch -m main
git commit -m "Add files via upload"
git status
for /f %%i in ('git remote show') do (
  set "hasRemote=1"
)
pause
if defined hasRemote (
  git push origin main -f
) else (
  if defined repo (
    git push %repo% main -f
  ) else (
    setlocal enabledelayedexpansion
    for %%I in (.) do set "Folder=%%~nxI"
    set "repo=https://github.com/PlayerMiller109/!Folder!"
    git push !repo! main -f
    endlocal
  )
)