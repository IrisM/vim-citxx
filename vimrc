" Hi
" Automatically load vimrc on change
autocmd! bufwritepost ~/.vimrc source ~/.vimrc

source ~/.vim/vimrc.d/vundle.vim
source ~/.vim/vimrc.d/indention.vim
source ~/.vim/vimrc.d/appearance.vim
source ~/.vim/vimrc.d/cyrillic.vim
source ~/.vim/vimrc.d/shortcuts.vim
 
if has("syntax")
  syntax on
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

set showcmd     " Show (partial) command in status line.
set showmatch   " Show matching brackets.
set ignorecase  " Do case insensitive matching
set smartcase   " Do smart case matching
set incsearch   " Incremental search
set autowrite   " Automatically save before commands like :next and :make

set so=3  " Number of visible lines while scrolling
set ruler  " Show current position
set hlsearch  " Highlight search results
set lazyredraw  " Don't redraw while executing macros (good performance config)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Switch among split windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

