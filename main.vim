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
set background=dark
set cursorline

highlight Normal ctermfg=white ctermbg=black  # Set text color
highlight LineNr ctermfg=blue  # Set line number color
highlight CursorLineNr ctermfg=yellow ctermbg=NONE # Set current line number color

inoremap <C-b> <C-o>0i
inoremap <C-s> <C-o>:w<CR>
inoremap <C-q> <C-o>:q<CR>
inoremap <C-x> <C-o>:
inoremap <C-v> <C-o>v
inoremap <C-u> <C-o>u
vnoremap <BACKSPACE> d

command Reloadrc {
  source ~/.vimrc
}

augroup InsertMode
  autocmd!
  # auto enter insert mode when leaving cmd or entering file
  autocmd VimEnter * startinsert 
  autocmd CmdlineLeave : startinsert
augroup END
