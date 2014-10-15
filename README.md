TraceWin Syntax File
--------------------

Usage:

It is recommended to simply use [vundle](https://github.com/gmarik/Vundle.vim) for this plugin. You add the following line to your .vimrc:
```
Plugin 'https://bitbucket.org/eothred/tracewin-vimsyntax.git'
```
Then after you execute `:PluginInstall` to install the plugin, and later on `PluginUpdate` to update all plugins.

Alternatively, you can install the syntax file manually. If you do, you need to detect
filetype yourself (see below). Add the following to your .vimrc:
```
au BufNewFile,BufRead *.dat setf tracewin
```


