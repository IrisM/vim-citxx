let mapleader = ","
let g:mapleader = ","

" Tab navigation
nmap <C-S-,> :tabp<cr>
nmap <C-S-.> :tabn<cr>

nmap ; :!

nmap <C-t> :NERDTreeToggle<cr>
inoremap <C-t> <Esc>:NerdTreeToggle<Cr>I

nmap <leader>vr :vertical<Space>resize<Space>

nmap <leader>s :source $MYVIMRC<cr>
nmap <leader>e :e $MYVIMRC<cr>
