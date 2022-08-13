syntax on 
set number 
set hlsearch

" https://vimtricks.com/p/highlight-specific-lines/
highlight LineHighlight ctermbg=darkgray guibg=darkgray
nnoremap <silent> <Leader>l :call matchadd('LineHighlight', '\%'.line('.').'l')
nnoremap <silent> <Leader>c :call clearmatches()
