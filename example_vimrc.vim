set nocompatible " It's vim, not vi

set tabstop=4 " Tab-ul va avea lungimea 4
set noexpandtab " Nu folosi spaţii

set autoindent " Copiază indentarea liniei anterioare
set cindent " Indentare pentru C-like languages

" Compilează şi execută un program C cu F9
map <F9> :w<CR>:!gcc % -o %< -g && ./%<<CR>
