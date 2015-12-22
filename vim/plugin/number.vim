" Switches between absolute and relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

autocmd InsertEnter * :set relativenumber
autocmd InsertLeave * :set norelativenumber

" <Space> - toggle line number style
nnoremap <silent> <Space> :call NumberToggle()<CR>
