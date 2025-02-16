#Requires AutoHotkey v2.0
settingDir := A_ScriptDir '/.ignore/obDefault.txt'
settings := StrSplit(FileRead(settingDir), '`n')
AppPath := settings[1]
Protocol := settings[2]
ori := Encode(A_Args[1])
name := StrSplit(ori, '\')[-1]
cdir := RegExReplace(ori, '\\' name '$')
Loop {
  a1 := StrSplit(cdir, '\')[-1]
  if (
    SubStr(a1, 2, 1) = ':' || Instr(cdir, '\.obsidian')
  ) {
    Run AppPath ' "' ori '"'
    ExitApp
  }
  if FileExist(cdir '\.obsidian') {
    Run 'obsidian://' Protocol '?vault=' a1 '&file=' name
    ExitApp
  }
  cdir := RegExReplace(cdir, '\\' a1 '$')
}
Encode(str) {
  str := StrReplace(str, '&', '%26')
  str := StrReplace(str, '(', "%28")
  str := StrReplace(str, ')', "%29")
  return str
}