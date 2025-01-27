git checkout main
:: 允许不连贯历史, 分支覆盖主支
git merge --squash b2 --allow-unrelated-histories -X theirs
git branch -D b2
set /p commitMsg=commit: 
if "%commitMsg%" == "" set "commitMsg=Merge b2"
git commit -m "%commitMsg%"