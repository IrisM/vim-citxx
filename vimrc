" Hi
" Automatically load vimrc on change
autocmd! bufwritepost ~/.vimrc source ~/.vimrc

source ~/.vim/vimrc.d/plug.vim
source ~/.vim/vimrc.d/indention.vim
source ~/.vim/vimrc.d/appearance.vim
source ~/.vim/vimrc.d/cyrillic.vim
source ~/.vim/vimrc.d/shortcuts.vim
source ~/.vim/vimrc.d/plugins.vim
source ~/.vim/vimrc.d/google_python_style.vim
 
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

" set relativenumber
set nu

syntax on
filetype on
au BufNewFile,BufRead *.escript set filetype=erlang


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Max line width line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set colorcolumn=81
:highlight ColorColumn ctermbg=darkgrey guibg=darkgrey

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Switch among split windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pretty XML
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()
