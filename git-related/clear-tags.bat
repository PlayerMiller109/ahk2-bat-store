chcp 65001 >nul & :: set UTF-8
for /f "tokens=*" %%i in ('git tag') do (
  git tag -d %%i
)