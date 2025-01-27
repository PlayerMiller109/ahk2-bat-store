call "D:\Global_Panel\Akey\ahk2-bat-store\new-repo\allVaults.bat"
cd %vPath%
git checkout --orphan new_branch
git add *
git branch -D main & git branch -m main
git commit -m "Add files via upload"