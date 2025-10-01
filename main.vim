vim9script

def SplashScreen()
  echo 'Welcome to Vim!' 
enddef

def SpacesForTabs()
  set expandtab
  set tabstop=2
  set shiftwidth=2 
enddef

command SpacesForTabs SpacesForTabs()

def TabsForTabs()
  set noexpandtab
enddef

command TabsForTabs TabsForTabs()

def Initiate()
  SpacesForTabs()
  set number
  set autoindent
  set mouse=a
  set showcmd
enddef

autocmd VimEnter * call Initiate()
autocmd VimEnter * call SplashScreen()
