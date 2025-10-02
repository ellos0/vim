vim9script

def SplashScreen()
  if empty(bufname('%'))
    call append(0, ['welcome to vim!', 'press any key to continue editing...'])
  else
    echo 'welcome to vim!'
    autocmd! Splash
  endif
enddef

def ClearSplashScreen()
  execute ':%d'
  autocmd! Splash
enddef

augroup Splash
  autocmd VimEnter * call SplashScreen()
  autocmd InsertEnter * call ClearSplashScreen()
augroup END

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
enddef

autocmd VimEnter * call Initiate()

inoremap <Leader>n <ESC>f<space>i
inoremap <Leader>b <ESC>0i
inoremap <Leader>w <ESC>:w<CR>i
inoremap <Leader>q <ESC>:q<CR>
inoremap <Leader>x <ESC>:
inoremap <Leader>d <ESC>ddi
inoremap <Leader>s <ESC>:source

command Reloadrc {
  source ~/.vimrc
}


