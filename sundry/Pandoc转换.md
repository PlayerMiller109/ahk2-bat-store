```bash
pandoc test.docx -o test.md
```

```powershell
# pandoc 本文件夹 .docx 转 .md, media 在 ./media 文件夹
Get-ChildItem -File -Recurse -Filter *.docx | ForEach-Object {
  pandoc --extract-media ./ -o ($_.BaseName + '.md') $_.FullName
}
```