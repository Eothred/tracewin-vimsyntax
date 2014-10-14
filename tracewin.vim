" Vim syntax file
" Language: TraceWin
" Maintainer: Yngve Inntjore Levinsen <yngve.levinsen@esss.se>
" Last Change: 2014 October

" Usage:
" au BufNewFile,BufRead *.dat setf tracewin

if exists("b:current_syntax")
  finish
endif

syntax case ignore

syntax match twElementLength '\d\+' contained nextgroup=twElementAttr
syntax match twElementLength '\d\+\.\d*' contained nextgroup=twElementAttr
syntax match twElementLength '\d\+e[+-]\+\d\+' contained nextgroup=twElementAttr

syntax match twElementAttr '.*$' contained
syntax match twCommandAttr '.*$' contained

syntax match twFieldMapType '\d\+' contained nextgroup=twElementLength skipwhite
syntax keyword twFieldMap FIELD_MAP nextgroup=twFieldMapType skipwhite

syntax keyword twCommands ADJUST_STEERER SET_BEAM_PHASE_ERROR ADJUST PLOT_DST nextgroup=twCommandAttr
syntax keyword twElements DRIFT QUAD DTL_CEL nextgroup=twElementLength skipwhite
syntax keyword twElementsNoLength LATTICE FREQ MATCH_FAM_PHASE MATCH_FAM_GRAD MIN_PHASE_VARIATION DIAG_POSITION GAP THIN_STEERING nextgroup=twElementAttr
syntax keyword twWarnStatements STEERER

syntax region twAfterEnd start='END' end='\%$'
syntax match twComment /;.*$/

" Tell VIM how to colour different stuff:
hi def link twComment Comment
hi def link twAfterEnd Comment
hi def link twCommands Statement
hi def link twElements Statement
hi def link twElementsNoLength Statement
hi def link twElementLength Constant
hi def link twElementAttr PreProc
hi def link twCommandAttr PreProc
hi def link twFieldMap Statement
hi def link twFieldMapType PreProc
 hi def link twWarnStatements WarningMsg
