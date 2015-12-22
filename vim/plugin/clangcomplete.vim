""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Clang Complete
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 0 - do not complete after ->, ., ::
" 1 - automatically complete after ->, ., ::
let g:clang_complete_auto = 1

" 0 - Select nothing
" 1 - Automatically select the first entry in the popup menu, but do not
" insert it into the code.
" 2 - Automatically select the first entry in the popup menu, and insert it
" into the code.
let g:clang_auto_select = 1

" 0 - do not open quickfix window on error.
" 1 - open quickfix window on error.
let g:clang_complete_copen=1

" 0 - do not highlight the warnings and errors
" 1 - highlight the warnings and errors the same way clang does it
let g:clang_hl_errors=1

let g:clang_user_options='|| exit 0'

" use libclang directly, fast due to caching
let g:clang_use_library=1

" tell clang_complete where to find libclang
let g:clang_library_path = '/Library/Developer/CommandLineTools/usr/lib/'
let g:clang_exec = '/Library/Developer/CommandLineTools/usr/bin/'

" 0 - do not do some snippets magic on code placeholders like function argument,
"     template argument, template parameters, etc.
" 1 - do some snippets magic on code placeholders like function argument,
"     template argument, template parameters, etc.
let g:clang_snippets = 1

" The snippets engine (clang_complete, ultisnips... see the snippets
" subdirectory).
let g:clang_snippets_engine = "clang_complete"

let g:clang_conceal_snippets=1

