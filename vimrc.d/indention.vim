set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
"set noexpandtab " Tabs for indention

set autoindent
set cindent
set smartindent

" Change indention rules for specified file types
au FileType crontab,fstab set noexpandtab tabstop=8 shiftwidth=8
au FileType make set noexpandtab
au FileType erlang set noexpandtab
au FileType go setlocal noexpandtab shiftwidth=2 tabstop=2

highlight ColorColumn ctermbg=gray
set colorcolumn=80

"Set paste mode when pasting from OS clipboard
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" Load indentation rules and plugins according to the detected filetype.
if has("autocmd")
	filetype plugin indent on
endif


