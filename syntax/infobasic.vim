" Vim syntax file
" Language:	INFOBASIC
" Maintainer:	Marcelo Andrade <marcelo.andrade.r (at) gmail.com>
" Last Change:	26 Feb 2007 18:10 

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif
" permite que los identificadores sean reconocidos por sensibilidad
" mayusculas/minusculas
syntax case match

syntax keyword infobasicKeyword PROGRAM SUBROUTINE GOSUB BEGIN RETURN STOP GOTO CALL
syntax keyword infobasicKeyword OPENSEQ READSEQ CLOSESEQ WRITESEQ
syntax keyword infobasicKeyword BEFORE FROM SETTING TO FOR EQU
syntax keyword infobasicKeyword CHANGE IN
syntax keyword infobasicKeyword CRT REM DISPLAY ERR ETEXT REBUILD.SCREEN REFRESH REFRESH.FIELD TEXT TXT TXTINP
syntax keyword infobasicKeyword BREAK CONTINUE
syntax keyword infobasicKeyword AF AV AS COMI COMI.ENRI FM SM VM
syntax keyword infobasicKeyword NOT AND OR

syntax keyword infobasicStatement IF THEN ELSE END LOOP REPEAT CASE NEXT STEP UNTIL WHILE

syntax keyword infobasicFunction ABS APP.STATIC.TEXT APPLICATION B.UPDATE.BATCH CALC.ERATE.LOCAL CALCULATE.CHARGE CDD CDT CFQ CLEARFILE CONVERT COUNT CUSTRATE DBR DCOUNT DEL DIETER.DATE DOWNCASE DUP E.GET.LOCAL.AMT E.GET.STMT.NARRATIVE EB.CLEAR.FILE EB.FORMAT.RATE EB.LOCREF.SETUP EB.READLIST EB.ROUND.AMOUNT EXCHRATE F.DELETE F.LIVE.MATWRITE F.LIVE.WRITE F.MATREAD F.MATREADU F.MATWRITE F.READ F.READU F.READV F.WRITE FATAL.ERROR FCY.CONVERT.CHECK FIELD FT.NULLS.CHK GET.NARRATIVE GET.SETTLEMENT.DEFAULTS GET.STANDARD.SELECTION.DETS ICONV ID.NEW INDEX INPUT INS INSERT JULDATE LCK LEN LIMIT.CHECK LIMIT.CURR.CONV LIMIT.GET.PRODUCT LOAD.COMPANY LOCATE MAIN MESSAGE MIDDLE.RATE.CONV.CHECK MSK  OCONV OFS.GLOBUS.MANAGER OPERATOR OPF OVE PGM.VERSION PRINT PRINTER.CLOSE PRINTER.OFF PRINTER.ON PRO PST R.NEW R.OLD REMOVE RG.GET.LOCAL.TEXT SC.CALC.YIELD SPOOL.REPORT  STORE.END.ERROR STORE.OVERRIDE T.LOCREF TRANSACTION.ABORT UPCASE V$EXIT WRITE NOBUF

syntax match infobasicKeyword /\$INSERT/

syntax keyword infobasicTodo contained TODO

syntax match infobasicComment /\*.*/ contains=infobasicTodo
syntax match infobasicComment /^REM.*/ contains=infobasicTodo
syntax match infobasicComment /;\*.*/ contains=infobasicTodo



syntax match infobasicIdentifier /[A-Z][A-Z0-9_\.]*/

"integer number, or floating point number without a dot.
syntax match infobasicNumber		/\<\d\+\>/
"floating point number, with dot
syntax match infobasicNumber		/\<\d\+\.\d*\>/
"floating point number, starting with a dot
syntax match infobasicNumber		/\.\d\+\>/
"floating point number, starting with a negative 
syntax match infobasicNumber		/-\d\+\>/

syntax region  infobasicString	  start=+"+  end=+"+
syntax region  infobasicString	  start=+'+  end=+'+

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_infobasic_syntax_inits")
  if version < 508
    let did_infobasic_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink infobasicString	String
  HiLink infobasicComment	Comment
  HiLink infobasicKeyword	Keyword
  HiLink infobasicIdentifier	Function
  HiLink infobasicNumber	Number
  HiLink infobasicStatement	Statement
  HiLink infobasicFunction	Function
  HiLink infobasicTodo	Todo

  delcommand HiLink
endif

let b:current_syntax = "infobasic"

" vim: ts=8
