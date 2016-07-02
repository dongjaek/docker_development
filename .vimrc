execute pathogen#infect() 
"syntastic, nerdtree"

set exrc
set number
set hls
set nocompatible
set showmatch
set history=100
" tabs give 4 spaces "
set tabstop=2
set softtabstop=2
" indents give 4 spaces "
set shiftwidth=2
set expandtab
set smarttab

" 80 character lines "
set textwidth=80

set paste
retab
syntax enable
syntax on
"All vim clipboards will share the same buffers and registers"
set clipboard=unnamed
map <F7> :w !xclip<CR><CR>
vmap <F7> "*y
map <S-F7> :r!xclip -o<CR>
set mouse=nicr
"Vim mappings because I'm clumsy sometimes
command W w
command Wq wq
command WQ wq
command Q q
command E Explore
command Tabedit tabedit
command NT NERDTree 
"This is how to increase the buffer size. It's set to 1000 lines right now" 
set viminfo='20,<1000,s10,h 

filetype plugin indent on
set modifiable
