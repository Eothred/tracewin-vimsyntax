" Vim syntax file
" Language: TraceWin
" Maintainer: Yngve Inntjore Levinsen <yngve.levinsen@esss.se>
" Last Change: 2015 March

" Usage:
" au BufNewFile,BufRead *.inp setf toutatis

if exists("b:current_syntax")
  finish
endif

syntax case ignore

syntax keyword toutFlags theSpecialLostFlag theAcceleratedFlag theLossesCriteriaFlag theGeometryFileFlag theRandomFlag WallAperture SemiWidthWall diaphragme theStartingModulation theRhoR0RatioInRMS GapRMS GapFFS thespacechargeperiod theextfieldperiod theTrancellFlag theSpeciesFlag theDistribution NbRMSCell theBreakOutAngle theAccuracyFlag NStep the2termsFlag NumberOfCouplingGap nextgroup=toutFlagAttr
syntax keyword toutDeprecated theEquivalentBeamFlag theNewPotFlag LBECompensation theSavingRunFlag theRunCartoonFlag theDirectionFlag LBECompensation:  nextgroup=toutDeprecatedAttr

" I have not found these mentioned in the documentation..
syntax keyword toutCouple PosCouplingGap CouplingGapWidth SemiEllipsoidLength SemiEllipsoidHeight nextgroup=toutFlagAttr

syntax keyword toutEnd end
syntax keyword toutFlags2 rho linac trancell nextgroup=toutFlagAttr
syntax keyword toutFlags3 input scheff exitffl vfac nextgroup=toutFlagAttr

syntax region toutTableHeader start="^{" end="$"
syntax region toutTableHeader2 start="^ Cell" end="$"
syntax region toutTable start="^[0-9]" end="$"

syntax match toutFlagAttr '.*$' contained
syntax match toutDeprecatedAttr '.*$' contained

"syntax region toutAfterEnd start='^ *END' end='\%$'
syntax match toutComment /;.*$/

" Tell VIM how to colour different stuff:
hi def link toutComment Comment
hi def link toutDeprecated Error
hi def link toutDeprecatedAttr Comment

"hi def link toutAfterEnd Comment

hi def link toutFlags Identifier
hi def link toutFlags2 Identifier
hi def link toutFlags3 Identifier
hi def link toutCouple Function
hi def link toutFlagAttr Constant

hi def link toutTable Number
hi def link toutTableHeader PreProc
hi def link toutTableHeader2 Include

hi def link toutEnd Type

" PreProc Constant Statement Comment Function
