choice /C 123 /M "c,m,r"
set "bat_path=%~dp0--"
if %errorlevel% == 1 (
  call "%bat_path%\git-commit.bat"
) else if %errorlevel% == 2 (
  call "%bat_path%\git-merge.bat"
) else if %errorlevel% == 3 (
  call "%bat_path%\git-remote.bat"
)