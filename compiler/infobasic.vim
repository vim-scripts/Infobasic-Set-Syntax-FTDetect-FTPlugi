" Vim compiler file
" Compiler:     infobasic
" Maintainer:   Marcelo Andrade <marcelo.andrade.r (at) gmail.com>
" Last Change:  FEB 27 2007

if exists("current_compiler")
  finish
endif
let current_compiler = "infobasic"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

"--------------------------------------------------
" CompilerSet makeprg=C:/pspadcompile/make.bat\ %\ SFCOBL\ 192.168.20.8\ Entrada_1
"-------------------------------------------------- 
CompilerSet makeprg=C:/pspadcompile/make_key.bat\ %\ SFCDESA1\ 192.168.20.9\ DESA_123

CompilerSet errorformat=%C\ %.%#,%E\"%f\"\\,\ %l\ (offset\ %c)\ %m,
                        \%C%m,%Z
