choice /C 123 /M "clone,main,b2"
if %errorlevel% == 1 (
  rmdir /s /q ".git"
  for %%I in (.) do set "Folder=%%~nxI"
  set "repo=https://github.com/PlayerMiller109/%Folder%"
  git clone --depth 1 --bare %repo% .git
  git config --local --bool core.bare false
  git reset --hard HEAD
  exit /b
) else if %errorlevel% == 2 (
  set "branch=main"
) else if %errorlevel% == 3 (
  set "branch=b2"
)
git push origin %branch% -f