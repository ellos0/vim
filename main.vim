function! s:SpacesForTabs()
  setlocal expandtab
  setlocal tabstop=2
  setlocal shiftwidth=2 
endfunction

command! SpacesForTabs call s:SpacesForTabs()

function! s:TabsForTabs()
  setlocal noexpandtab
endfunction

command! TabsForTabs call s:TabsForTabs()

call s:SpacesForTabs()
set number
set autoindent
set mouse=a
set background=dark

inoremap <C-b> <C-o>0i
inoremap <C-s> <C-o>:w<CR>
inoremap <C-q> <C-o>:q<CR>
inoremap <C-x> <C-o>:
inoremap <C-v> <C-o>v
inoremap <C-u> <C-o>u
vnoremap <BACKSPACE> d

command! Reloadrc source ~/.vimrc

augroup InsertMode
  autocmd!
  autocmd VimEnter * startinsert 
  autocmd CmdlineLeave * startinsert
augroup END
