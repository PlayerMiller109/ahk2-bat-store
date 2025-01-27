```bash
# 当前文件夹设为裸仓库
git init --bare -b "main"
```

```bash
git remote add local "D:\Obv-bak\.Edu\bare"
```

```bash
git remote rm local
git remote -v
```

```bash
# 不指定仓库时默认提交到哪个仓库
git push -u origin main
git branch -vv
```
