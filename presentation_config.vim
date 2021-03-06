set nocompatible

set runtimepath+=./.vim
execute pathogen#infect()

syntax on
filetype plugin indent on

set wrap
set linebreak

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

au VimEnter slides.md setl window=66
au VimEnter slides.md normal ggL$
au VimEnter slides.md command! GO normal /#zt
au VimEnter slides.md nnoremap <Enter> :GO<CR>
au VimEnter slides.md nnoremap <Space> :GO<CR>
au VimEnter slides.md command! BACK normal ?#zt
au VimEnter slides.md nnoremap <Bs> :BACK<CR>
au VimEnter slides.md command! RUN execute getline(".")
au VimEnter slides.md command! START normal ggL$
au VimEnter slides.md command! END normal GL$:BACK<CR>
au VimEnter slides.md command! EXIT normal ZZ
au VimEnter slides.md command! TAB :tabnew

au VimLeave slides.md :!killall node
au VimLeave slides.md :!killall node

nnoremap j gj
nnoremap k gk

