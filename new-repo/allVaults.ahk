allVaults() {
  _Menu := Menu()
  _Menu.Add 'Akey', Akey
  _Menu.Add 'Edu', Edu
  _Menu.Add 'NV', NV
  _Menu.Add 'Bug', Bug
  _Menu.Add 'Cumu', Cumu
  Akey(*) {
    Run 'D:/Global_Panel/Akey/ahk2-bat-store'
  }
  Edu(*) {
    Run 'obsidian://vault/Edu'
  }
  NV(*) {
    Run 'obsidian://vault/NV'
  }
  Bug(*) {
    Run 'obsidian://vault/Debug'
  }
  Cumu(*) {
    Run 'obsidian://vault/Cumu'
  }
  _Menu.Show()
}