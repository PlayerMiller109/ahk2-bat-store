chcp 65001 >null
for /f "tokens=*" %%i in ('git tag') do (
  git tag -d %%i
)