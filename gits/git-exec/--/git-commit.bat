git show-ref --verify --quiet refs/heads/b2
if errorlevel 1 (
  :: 创建并切换到分支
  git checkout -b b2
) else (
  git add *
  git rm --cached "%CURRBAT%" -f
  git commit -m "%time:~0,5%"
)