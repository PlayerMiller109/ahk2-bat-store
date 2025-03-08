```bash
git add --renormalize *
```

<#
  注: 代码迷之有问题, 替换后始终存在编码错误.
  正确做法是临时设置 autocrlf = input 重规范化一次后,
  先 git-force 在 git 中存储更改, 再 ps1 替换,
  完后在 VSCode 源码管理取消所有更改即完成本地文件修改.
#>
```powershell
$fileTypes = @("*.md", "*.css", "*.js", "*.json", "*.py")
Get-ChildItem -Recurse -Include $fileTypes | ForEach-Object {
  $path = $_.FullName; $cont = Get-Content -Raw -Path $path
  if ($cont -match "`r`n") {
    Write-Output "${path}: CRLF"
    # $cont = $cont -replace "`r`n", "`n"
    Set-Content -Path $path -Value $cont -NoNewline
  }
  elseif ($cont -match "`n") { Write-Output "${path}: LF" }
}
```