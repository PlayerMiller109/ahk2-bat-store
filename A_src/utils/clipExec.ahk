clipExec(func, le := 'en') {
  ; prev := ClipboardAll()
  A_Clipboard := ''
  Loop 3 {
    Sleep(50), Send('^c')
  }
  if ClipWait(0.5) {
    if (le != 'en') {
      func(A_Clipboard)
    }
    else if (RegExMatch(A_Clipboard, '[a-zA-Z\s]+', &m)) {
      func(m[0])
    }
  }
}