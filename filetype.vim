au BufNewFile,BufRead *.dat setf tracewin
augroup SetCMS
    autocmd FileType tracewin let &l:commentstring=';%s'
augroup END
