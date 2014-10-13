" Vim syntax file
" Language: TraceWin
" Maintainer: Yngve Inntjore Levinsen <yngve.levinsen@esss.se>
" Last Change: 2014 October

" Usage:
" au BufNewFile,BufRead *.dat setf tracewin
if exists("b:current_syntax")
  finish
endif

syntax match twElementLength '\d\+' contained nextgroup=twElementAttr
syntax match twElementLength '\d\+\.\d*' contained nextgroup=twElementAttr
syntax match twElementLength '\d\+e[+-]\+\d\+' contained nextgroup=twElementAttr

syntax match twElementAttr '.*$' contained

" Floating point number with decimal no E or e (+,-)
syn match celNumber '\d\+\.\d*'
syn match celNumber '[-+]\d\+\.\d*'

syntax keyword twElements DRIFT QUAD DTL_CEL nextgroup=twElementLength skipwhite
syntax keyword twWarnStatements END STEERER
"syntax clear
syntax match twComment /;.*$/
syntax region twAfterEnd start='END' end='\%$'

" Tell VIM how to colour different stuff:
hi def link twComment Comment
hi def link twAfterEnd Comment
hi def link twElements Statement
hi def link twElementLength Constant
hi def link twElementAttr PreProc
hi def link twWarnStatements WarningMsg
