let g:syntastic_cpp_checkers=['cppcheck']
let g:syntastic_hpp_checkers=['cppcheck']

" Startify
let g:startify_change_to_dir = 0
let g:startify_files_number = 8
let g:startify_skiplist = ['vimrc',]
let g:startify_custom_header = map(split(system('fortune ~/.vim/fortunes | cowsay -W 60'), '\n'), '"   ". v:val') + ['','']
let g:startify_session_persistence = 1
