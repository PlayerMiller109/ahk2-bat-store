choice /C 123 /M "c,m,f"
set "bat_path=D:\Global_Panel\Akey\ahk2-bat-store\git-related\"
if %errorlevel% == 1 (
  call "%bat_path%git-commit.bat"
) else if %errorlevel% == 2 (
  call "%bat_path%git-merge.bat"
) else if %errorlevel% == 3 (
  call "%bat_path%git-force.bat"
)