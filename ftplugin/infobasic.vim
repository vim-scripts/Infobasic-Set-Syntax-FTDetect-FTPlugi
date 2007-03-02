" Vim filetype plugin file
" Language:	Infobasic
" Maintainer:	Marcelo Andrade <marcelo.andrade.r (at) gmail.com>
" Last Change:  2007 Feb 28

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C

" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal formatoptions-=t formatoptions+=croql

" Set 'comments' to format dashed lists in comments. Behaves just like C.
setlocal comments& comments^=sO:*\ -,mO:*\ \ ,exO:*/

setlocal commentstring=*%s\ 

compiler infobasic
setlocal foldmethod=marker
setlocal foldcolumn=3
setlocal number
setlocal lines=80 columns=120
setlocal iskeyword=A-Z,48-57,_,.,
setlocal omnifunc=syntaxcomplete#Complete

setlocal dictionary-=C:/Archivos\ de\ programa/Vim/vim70/dictionary/infobasic dictionary+=C:/Archivos\ de\ programa/Vim/vim70/dictionary/infobasic
setlocal complete-=k complete+=k

map <F5> :make<cr><C-w><Up>
map <F6> :cp<cr>
map <F7> :cn<cr>
map <F8> :cl<cr>
map <F9> :cl!<cr>

" Change the :browse e filter to primarily show SFC files
if has("gui_win32")
    let  b:browsefilter="SFC Files (*SFC*)\t*SFC*\n"
endif

" Undo the stuff we changed.
let b:undo_ftplugin = "setlocal formatoptions< comments< commentstring< path< includeexpr<" .
		\     " | unlet! b:browsefilter"

" Restore the saved compatibility options.
let &cpo = s:save_cpo
