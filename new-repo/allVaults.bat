set "root=D:\Obv"
set "v[1]=Edu"
set "v[2]=NV"
set "v[3]=Cumu"
set "ob=.obsidian"

set "i=1" & set "x="
:iterArr
if defined v[%i%] (
  if not defined msg (
    call set "msg=%%v[%i%]%%"
  ) else (
    call set "msg=%msg%,%%v[%i%]%%"
  )
  set "x=%x%%i%"
  set /a "i+=1"
  Goto :iterArr
)
choice /C %x% /M "%msg%"
call set "v=%%v[%errorlevel%]%%"
set "vPath=%root%\%v%"
set "v1Path=%root%\%v[1]%"