syntax on # highlight syntax
set number # show line numbers
set hlsearch # highlight all results

" https://vimtricks.com/p/highlight-specific-lines/
highlight LineHighlight ctermbg=darkgray guibg=darkgray
nnoremap <silent> <Leader>l :call matchadd('LineHighlight', '\%'.line('.').'l')
nnoremap <silent> <Leader>c :call clearmatches()
