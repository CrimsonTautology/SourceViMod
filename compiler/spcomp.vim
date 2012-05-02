" Vim compiler file
" Compiler:	SourceMod/SourcePawn
" Maintainer:	Bill ??? (billehs+sourcemod@gmail.com)
" Last Change:	2011

if exists("current_compiler")
  finish
endif
let current_compiler = "spcomp"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" Errorformat
au BufNewFile,BufRead *.sp,*.inc set errorformat=%f\(%l\)\ :\ fatal\ %t%*[^0-9]%n:\ %m,%f\(%l\)\ :\ %t%*[^0-9]%n:\ %m

" default make
CompilerSet makeprg=spcomp\ %:p
