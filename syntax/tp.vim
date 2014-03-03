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

" Identifiers
syn match       tpIdentifier        /[a-zA-Z0-9]\+/
hi def link     tpIdentifier        Identifier


" Conditional
syn keyword     tpConditional       IF ELSE SELECT
hi def link     tpConditional       Conditional

" Constants
syn keyword     tpBoolean           ON OFF TRUE FALSE
syn keyword     tpConstant          max_speed sec
hi def link     tpBoolean           Boolean
hi def link     tpConstant          Constant


" Data
syn region      tpData              start="DI\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="DO\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="F\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="GI\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="GO\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="PR\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="R\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="RI\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="RO\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="SI\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="SO\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="SR\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="UI\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="UO\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="VR\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="TIMER\[" end="\]" contains=tpInteger,tpItemComment
hi def link     tpData              Type

" Item comment
syn match       tpItemComment       /\(\:\)\@<=[a-zA-Z0-9# \/\\]\+/ contained
hi def link     tpItemComment       String


" Strings
syn region      tpString            start="'" end="'"
syn region      tpString            start='"' end='"'
hi def link     tpString            String

" Labels
syn region      tpLabel             start="LBL\[" end="\]" contains=tpInteger,tpItemComment
hi def link     tpLabel             Label

" Numbers
syn match       tpInteger           /[\-]\?\d\+/
syn match       tpFloat             /[\-]\?\d\+\.\d\+/
hi def link     tpInteger           Number
hi def link     tpFloat             Float

" Statements
syn match       tpKeyword           /\/PROG/
syn match       tpKeyword           /\/ATTR/
syn match       tpKeyword           /\/APPL/
syn match       tpKeyword           /\/MN/
syn match       tpKeyword           /\/POS/
syn match       tpKeyword           /\/END/
syn keyword     tpKeyword           ABORT CALL CNT DA DB JMP PAUSE PAYLOAD TB TA VOFFSET WAIT
syn keyword     tpKeyword           STOP_TRACKING TIMEOUT UFRAME_NUM UTOOL_NUM
syn match       tpKeyword           /AP_LD/
syn match       tpKeyword           /ACC/
syn match       tpKeyword           /CNT/
syn match       tpKeyword           /RT_LD/
hi def link     tpKeyword           Keyword

" Comments
syn match       tpComment           /\(\s\+\d\+:\s\+\)\@<=!.*/
syn match       tpRemark            /\(\s\+\d\+:\s\+\)\@<=\/\/.*/
hi def link     tpComment           Comment
hi def link     tpRemark            Comment


let b:current_syntax = "tp"
