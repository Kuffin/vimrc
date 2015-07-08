""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Spelling
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable spellchecking by default
set nospell

" Set languages for spell checking
set spelllang=en

" Toggles spell
function! SpellToggle()
  if(&spell == 1)
    set nospell
    echo "Spell: Off"
  else
    set spell
    echo "Spell: On"
  endif
endfunc

" <F3>  - toggle spell on/off
nnoremap <silent> <F3> :call SpellToggle()<CR>
