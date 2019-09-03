" Settings for Python files
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

set background=dark
colorscheme gruvbox    " github: https://github.com/morhetz/gruvbox.git 

set foldmethod=indent

" Python code completion
setlocal omnifunc=pythoncomplete#Complete

" Flake 8 
" Clear quickfix window
map <buffer> <S-F7> :call flake8#Flake8UnplaceMarkers()<CR>
" Show signs in gutter
let g:flake8_show_in_gutter=1
" Remove all trailing white space before save
autocmd BufWritePre *.py :%s/\s\+$//e
" Run on saveing a file
autocmd BufWritePost *.py call Flake8()

