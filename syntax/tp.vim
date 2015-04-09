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

" Sysvars
syn match       tpSysvar            /\.\?\$[a-zA-Z0-9.]\+/
hi def link     tpSysvar            Identifier

" Identifiers
syn match       tpIdentifier        /[a-zA-Z0-9]\+/
hi def link     tpIdentifier        Identifier

" Conditional
syn keyword     tpConditional       IF THEN ENDIF ELSE SELECT FOR TO DOWNTO ENDFOR
hi def link     tpConditional       Conditional

" Constants
syn keyword     tpBoolean           ON OFF TRUE FALSE ENABLE DISABLE
syn keyword     tpConstant          max_speed
hi def link     tpBoolean           Boolean
hi def link     tpConstant          Constant

" Units
syn match       tpUnits             /sec/
syn match       tpUnits             /msec/
syn match       tpUnits             /%/
syn match       tpUnits             /mm/
syn match       tpUnits             /deg/
syn match       tpUnits             /mm\/sec/
syn match       tpUnits             /cm\/min/
syn match       tpUnits             /deg\/sec/
hi def link     tpUnits             Special

" Modifiers
syn match       tpMod               /ACC/
syn match       tpMod               /Skip/
syn match       tpMod               /PSPD/
syn keyword     tpMod               DA DB INC Offset PTH TA TB Tool_Offset VOFFSET BREAK Wjnt
hi def link     tpMod               Special

" String Functions
syn keyword     tpString            FINDSTR STRLEN SUBSTR
hi def link     tpString            Special

" Data
syn region      tpData              start="AI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="AO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="DI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="DO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="F\[" end="\]"      contains=tpInteger,tpItemComment
syn region      tpData              start="GI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="GO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="P\[" end="\]"      contains=tpInteger,tpItemComment,tpString
syn region      tpData              start="PR\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="AR\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="R\[" end="\]"      contains=tpInteger,tpItemComment
syn region      tpData              start="RI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="RO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="RSR\[" end="\]"    contains=tpInteger,tpItemComment
syn region      tpData              start="SI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="SO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="SR\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="UI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="UO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="VR\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="RESUME_PROG\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="TIMER\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="TIMER_OVERFLOW\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="UALM\[" end="\]"   contains=tpInteger,tpItemComment
syn region      tpData              start="UFRAME\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="UTOOL\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="MESSAGE\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="JOINT_MAX_SPEED\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="PAYLOAD\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="FOUND_POS\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="MES\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="DIAG_REC\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="DIAG_REC_SEC\[" end="\]"  contains=tpInteger,tpItemComment
hi def link     tpData              Type

" Item comment
syn match       tpItemComment       /:[a-zA-Z0-9 ]\+/ contained
hi def link     tpItemComment       Function

" Line numbers
syn match       tpLineNumber        /^ \+:/
syn match       tpLineNumber        /^ \+\d\+:/
hi def link     tpLineNumber        Comment

" Strings
syn region      tpString            start="'" end="'"
syn region      tpString            start='"' end='"'
hi def link     tpString            String

" Labels
syn region      tpLabel             start="LBL\[" end="\]" contains=tpData,tpInteger,tpItemComment
hi def link     tpLabel             Label

" Numbers
syn match       tpInteger           /[\-]\?\d\+/
syn match       tpFloat             /[\-]\?\d\+\.\d\+/
syn match       tpFloat             /\.\?\d\+/
hi def link     tpInteger           Number
hi def link     tpFloat             Float

" Motion
syn match       tpMotion            /\(A\|C\|J\|L\)\( P\)\@=/
hi def link     tpMotion            Special

" Operators
syn match       tpOperator          /+/
syn match       tpOperator          /-/
syn match       tpOperator          /*/
syn match       tpOperator          /\//
syn match       tpOperator          /=/
syn match       tpOperator          />/
syn match       tpOperator          /</
syn match       tpOperator          />=/
syn match       tpOperator          /<=/
syn keyword     tpOperator          AND DIV MOD OR
hi def link     tpOperator          Operator

" Keywords
syn match       tpKeyword           /\/PROG/
syn match       tpKeyword           /\/ATTR/
syn match       tpKeyword           /\/APPL/
syn match       tpKeyword           /\/MN/
syn match       tpKeyword           /\/POS/
syn match       tpKeyword           /\/END/
syn match       tpKeyword           /COL GUARD ADJUST/
syn match       tpKeyword           /COL DETECT ON/
syn match       tpKeyword           /COL DETECT OFF/
syn match       tpKeyword           /STICK DETECT ON/
syn match       tpKeyword           /STICK DETECT OFF/
syn match       tpKeyword           /\(LOCK\|UNLOCK\) \(PREG\|VREG\)/
syn match       tpKeyword           /SKIP CONDITION/
syn match       tpKeyword           /ERR_NUM/
syn match       tpKeyword           /LINEAR_MAX_SPEED/
syn match       tpKeyword           /MODELID/
syn match       tpKeyword           /ENC/
syn keyword     tpKeyword           ABORT CALL END FINE JMP JPOS LPOS MONITOR OVERRIDE PAUSE POINT_LOGIC PULSE RESET RUN START STOP STOP_TRACKING TIMEOUT UFRAME_NUM UTOOL_NUM WAIT RUN_FIND GET_OFFSET GET_PASSFAIL GET_NFOUND SET REFERENCE CAMER_CALIB GET_READING CONDITION TOOL_OFFSET OFFSET
syn match       tpKeyword           /AP_LD/
syn match       tpKeyword           /CNT/
syn match       tpKeyword           /CR/
syn match       tpKeyword           /RT_LD/
syn match	tpKeyword           /$WAITTMOUT/
syn match	tpKeyword           /ERROR_PROG/
hi def link     tpKeyword           Keyword

" Comments
syn match       tpComment           /\(\s*\d*:\s*\)\@<=!.*/	contains=@spell
syn match       tpComment           /\(\s*\d*:\s*\)\@<=--eg:.*/	contains=@spell
syn match       tpRemark            /\(\s*\d*:\s*\)\@<=\/\/.*/
hi def link     tpComment           Comment
hi def link     tpRemark            Comment

" Header stuff
syn keyword     tpHeader            OWNER ASCBIN MNEDITOR COMMENT PROG_SIZE CREATE DATE TIME MODIFIED FILE_NAME VERSION LINE_COUNT MEMORY_SIZE PROTECT READ_WRITE TCD STACK_SIZE TASK_PRIORITY TIME_SLICE BUSY_LAMP_OFF ABORT_REQUEST PAUSE_REQUEST DEFAULT_GROUP CONTROL_CODE AUTO_SINGULARITY_HEADER ENABLE_SINGULARITY_AVOIDANCE
hi def link     tpHeader            Define

let b:current_syntax = "tp"
