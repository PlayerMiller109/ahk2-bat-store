#Include '%A_WorkingDir%/utils/clipExec.ahk'

dicts() {
  if WinExist('词根词缀字典') {
    if GetKeyState('LButton', 'P') {
      Send '{Blind}{vkE8}'
      if KeyWait('LButton')
        clipExec(wActive)
    }
  }
}

wActive(_) {
  WinActivate
}