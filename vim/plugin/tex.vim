""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" VimTeX Plugin
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" latex is sorted by order
let Tlist_tex_settings = 'latex;l:labels;s:sections;t:subsections;u:subsubsections;p:paragraphs'
au BufReadPre *.tex let Tlist_Sort_Type = "order"

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Set which LaTeX symbols to conceal
"
" a : accents / ligatures
" d : delimeters
" g : Greek
" m : math
" s : superscript / subscript
let g:tex_conceal=""

" enable/disable folding
" default: 1
let g:vimtex_fold_enabled = 0

