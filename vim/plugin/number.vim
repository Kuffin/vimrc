" Switches between absolute and relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" <Space> - toggle line number style
nnoremap <silent> <Space> :call NumberToggle()<CR>
