autocmd VimResized * execute "normal! \<c-w>="
autocmd BufWritePre * %s/\s\+$//e
