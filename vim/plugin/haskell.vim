""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Haskell
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Define the path to the GHC compiler
"let g:ghc = "/usr/bin/ghc-7.6.3"


augroup filetype
  au! BufRead,BufNewFile *.hs set filetype=haskell
  au FileType haskell set tabstop=4
  au FileType haskell set expandtab
  au FileType haskell set softtabstop=4
  au FileType haskell set shiftwidth=4
  au FileType haskell set autoindent
augroup END

" configure browser for haskell_doc.vim
"let g:haddock_browser = "/usr/bin/firefox"
