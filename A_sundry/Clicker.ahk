#UseHook

LvsR := InputBox("左比右：")
LPeriod := 200
RPeriod := LPeriod * LvsR.Value

pressLKey() {
  Send "g"
}
pressRKey() {
  Send "h"
}

SetTimer pressLKey, LPeriod
SetTimer pressRKey, RPeriod