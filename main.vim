vim9script

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

SpacesForTabs()
set number
set autoindent
set mouse=a

inoremap <C-b> <C-o>0i
inoremap <C-s> <C-o>:w<CR>
inoremap <C-q> <C-o>:q<CR>
inoremap <C-x> <C-o>:
inoremap <C-d> <C-o>d

command Reloadrc {
  source ~/.vimrc
}

augroup InsertMode
  autocmd!
  # auto enter insert mode when leaving cmd or entering file
  autocmd VimEnter * startinsert 
  autocmd CmdlineLeave : startinsert
augroup END
