" Vim compiler file for HTML.
" Compiler:     HTML Validator
" Maintainer:   Sorin Ionescu <sorin.ionescu@gmail.com>
" Maintainer:   Mark Grealish <mark@bhalash.com> 
" Last Change:  2015-11-27
" Version:      2.0.0 
"
" Installation:
"   Drop html.vim in ~/.vim/compiler directory.
"
"   Add the following line to the autocmd section of .vimrc
"
"      autocmd FileType html compiler html

if exists('current_compiler')
  finish
endif
let current_compiler = 'html'

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=(echo\ '[%]';\ curl\ -s\ --connect-timeout\ 5\ -F\ laxtype=yes\ -F\ level=error\ -F\ out=gnu\ -F\ doc=@\"%\"\ https://validator.nu\ \\\|\ sed\ -e\ \'s/^\"[^\"]*\"://g\'\ -e\ \'s/^\\([0-9]*\\.[0-9]*\\)-[0-9]*\\.[0-9]*/\\1/g\')
CompilerSet errorformat=%+P[%f],%l.%c:\ %t%*[^:]:\ %m,%-Q

let &cpo = s:cpo_save
unlet s:cpo_save
