au BufNewFile,BufRead *.dat setf tracewin
augroup SetCMS
    autocmd FileType tracewin let &l:commentstring=';%s'
augroup END

au BufNewFile,BufRead *.inp setf toutatis
augroup SetCMS
    autocmd FileType toutatis let &l:commentstring=';%s'
augroup END
