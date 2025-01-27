```bash
# 签出仅包含最新提交的副本
setlocal enabledelayedexpansion
for /f %%i in ('git rev-parse --short HEAD') do (
  set "msg=Checkout: %%i"
)
for /f %%i in ('git write-tree') do (
  set "treeHash=%%i"
)
for /f %%i in ('git commit-tree -m "!msg!" !treeHash!') do (
  set "initHash=%%i"
)
git update-ref refs/heads/b2 !initHash!
endlocal
```

```bash
# 从主支删除分支删除的文件
chcp 65001 >null
for /f "tokens=*" %%i in ('"git -c core.quotePath=false diff --name-only --diff-filter=D main..b2"') do (
  git rm --cached "%%i" -f
)
```
