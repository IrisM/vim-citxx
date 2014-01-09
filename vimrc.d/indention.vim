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

" Load indentation rules and plugins according to the detected filetype.
if has("autocmd")
	filetype plugin indent on
endif


