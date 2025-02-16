choice /C 123 /M "clone,main,b2"
if %errorlevel% == 1 (
  rmdir /s /q ".git"
  setlocal enabledelayedexpansion
  for %%I in (.) do set "Folder=%%~nxI"
  set "repo=https://github.com/PlayerMiller109/!Folder!"
  git clone --depth 1 --bare !repo! .git
  endlocal
  git config core.bare false
  git reset --hard HEAD
  exit /b
) else if %errorlevel% == 2 (
  set "branch=main"
) else if %errorlevel% == 3 (
  set "branch=b2"
)
git push origin %branch% -f