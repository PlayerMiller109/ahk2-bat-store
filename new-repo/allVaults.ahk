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
    Run 'obsidian://open?vault=Edu'
  }
  NV(*) {
    Run 'obsidian://open?vault=NV'
  }
  Bug(*) {
    Run 'obsidian://open?vault=Debug'
  }
  Cumu(*) {
    Run 'obsidian://open?vault=Cumu'
  }
  _Menu.Show()
}