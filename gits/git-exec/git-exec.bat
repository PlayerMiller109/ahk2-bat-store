choice /C 1234 /M "c,m,r,p"
set "bat_path=%~dp0--"
if %errorlevel% == 1 (
  call "%bat_path%\git-commit.bat"
) else if %errorlevel% == 2 (
  call "%bat_path%\git-merge.bat"
) else if %errorlevel% == 3 (
  Goto :remote
) else if %errorlevel% == 4 (
  Goto :push
)
exit /b

setlocal enabledelayedexpansion
for %%I in (.) do set "Folder=%%~nxI"
set "repo=https://github.com/PlayerMiller109/!Folder!"

:remote
choice /C 12 /M "clone,refresh"
if !errorlevel! == 1 (
  rmdir /s /q ".git"
  git clone --depth 1 --bare !repo! .git
  git config core.bare false
  git reset --hard HEAD
  git remote rm origin
) else if !errorlevel! == 2 (
  git remote rm origin
  git remote add origin !repo!
)
exit /b

:push
choice /C 12 /M "main,b2"
if !errorlevel! == 1 (
  set "branch=main"
) else if !errorlevel! == 2 (
  set "branch=b2"
) 
git push !repo! !branch! -f
exit /b