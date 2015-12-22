""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" CtrlP
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use this option to change the mapping to invoke CtrlP in |Normal| mode
let g:ctrlp_map = '<c-p>'

" Set the default opening command to use when pressing the above mapping
let g:ctrlp_cmd = 'CtrlP'

" Change the postion, the listing order of results, the minimum and the maximum
" heights of the match window
" default: ''
" Example:
"   let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
" The position: (default: bottom)
"   top - show the match window at the top of the screen.
"   bottom - show the match window at the bottom of the screen.
" The listing order of results: (default: btt)
"   order:ttb - from top to bottom.
"   order:btt - from bottom to top.
" The minimum and maximum heights:
"   min:{n} - show minimum {n} lines (default: 1).
"   max:{n} - show maximum {n} lines (default: 10).
" The maximum number of results:
"   results:{n} - list maximum {n} results (default: sync with max height).
" Note: When a setting isn't set, its default value will be used.
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'

" When starting up, CtrlP sets its local working directory according to this
" variable:
" default: 'ra'
" c - the directory of the current file.
" a - like "c", but only applies when the current working directory outside of
"     CtrlP isn't a direct ancestor of the directory of the current file.
" r - the nearest ancestor that contains one of these directories or files:
"     .git .hg .svn .bzr _darcs
" w - begin finding a root from the current working directory outside of CtrlP
"     instead of from the directory of the current file (default). Only applies
"     when "r" is also present.
" 0 or <empty> - disable this feature.
" Note1: if "a" or "c" is included with "r", use the behavior of "a" or "c" (as
"   a fallback) when a root can't be found.
" Note2: you can use a |b:var| to set this option on a per buffer basis.
let g:ctrlp_working_path_mode = ''

" Set this to 1 if you want CtrlP to scan for dotfiles and dotdirs
" default: 0
let g:ctrlp_show_hidden = 1

" Enable/Disable per-session caching
" default: 1
let g:ctrlp_use_caching = 1

" Set this to 0 to enable cross-session caching by not deleting the cache files
" upon exiting Vim
" default: 1
let g:ctrlp_clear_cache_on_exit = 0

