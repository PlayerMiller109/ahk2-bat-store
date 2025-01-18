call "D:\Global_Panel\Akey\ahk2-bat-store\new-repo\allVaults.bat"

mklink "%vPath%\%ob%\appearance.json" "%v1Path%\%ob%\appearance.json"
::mklink "%vPath%\%ob%\canvas.json" "%v1Path%\%ob%\canvas.json"

mklink "%vPath%\%ob%\app.json" "%v1Path%\%ob%\app.json"
mklink "%vPath%\%ob%\backlink.json" "%v1Path%\%ob%\backlink.json"
mklink "%vPath%\%ob%\core-plugins.json" "%v1Path%\%ob%\core-plugins.json"
mklink "%vPath%\%ob%\core-plugins-migration.json" "%v1Path%\%ob%\core-plugins-migration.json"
mklink "%vPath%\%ob%\hotkeys.json" "%v1Path%\%ob%\hotkeys.json"

mklink /d "%vPath%\s3" "%v1Path%\s3"
mklink /d "%vPath%\%ob%\plugins" "%v1Path%\%ob%\plugins"
mklink /d "%vPath%\%ob%\snippets" "%v1Path%\%ob%\snippets"