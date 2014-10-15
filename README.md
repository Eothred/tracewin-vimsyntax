TraceWin Syntax File
--------------------

Usage:
You can install this file manually, in which case you need to detect
filetype yourself (see below).

Alternatively, and recommended, use [vundle](https://github.com/gmarik/Vundle.vim) by adding
this to your .vimrc:

```
Plugin 'https://bitbucket.org/eothred/tracewin-vimsyntax.git'
```

Then, 

If you install manually, you need to recognize the right formats by adding to ~/.vimrc:
```
au BufNewFile,BufRead *.dat setf tracewin
```


