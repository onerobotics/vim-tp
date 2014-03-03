" Vim syntax file
" Language: FANUC TP
" Author:   Jay Strybis <jay.strybis@gmail.com>
" URL:      http://github.com/onerobotics/vim-tp
" License:  MIT

if exists("b:current_syntax")
  finish
endif

if version < 600
  syntax clear
endif

" Comments
syn region      tpComment           start="^\s\+\d\+:\s\+!" end="$"
syn region      tpRemark            start="\/\/" end="$"
hi def link     tpComment           Comment
hi def link     tpRemark            Comment

" Conditional
syn keyword     tpConditional       IF
hi def link     tpConditional       Conditional

" Constants
syn keyword     tpBoolean           ON OFF
syn keyword     tpConstant          max_speed
hi def link     tpBoolean           Constant
hi def link     tpConstant          Constant

" Data
syn region      tpData              start="DI\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="DO\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="F\[" end="\]"  contains=tpNumber,tpIdentifier
syn region      tpData              start="GI\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="GO\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="PR\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="R\[" end="\]"  contains=tpNumber,tpIdentifier
syn region      tpData              start="RI\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="RO\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="SI\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="SO\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="SR\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="UI\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="UO\[" end="\]" contains=tpNumber,tpIdentifier
syn region      tpData              start="VR\[" end="\]" contains=tpNumber,tpIdentifier
hi def link     tpData              Type

" Identifiers
syn match       tpIdentifier        /:[a-zA-Z0-9# ]\+/ contained
hi def link     tpIdentifier        Constant

" Labels
syn region      tpLabel             start="LBL\[" end="\]" contains=tpNumber,tpIdentifier
hi def link     tpLabel             Identifier

" Numbers
syn match       tpNumber            /\i\@<![-+]\?\d\+\%([eE][+-]\?\d\+\)\?/
syn match       tpInteger           /\d\+/
syn match       tpFloat             /\i\@<![-+]\?\d*\.\@<!\.\d\+\%([eE][+-]\?\d\+\)\?/
hi def link     tpNumber            Number
hi def link     tpInteger           Number
hi def link     tpFloat             Float

" Statements
syn keyword     tpKeyword           CALL CNT DA DB JMP PAYLOAD TB TA VOFFSET WAIT
syn keyword     tpKeyword           STOP_TRACKING UFRAME_NUM UTOOL_NUM
syn match       tpKeyword           /AP_LD/
syn match       tpKeyword           /ACC/
syn match       tpKeyword           /CNT/
syn match       tpKeyword           /RT_LD/
hi def link     tpKeyword           Statement

let b:current_syntax = "tp"
