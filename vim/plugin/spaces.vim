" Delete trailing whitespace and tabs at the end of each line
command! DeleteTrailingWs :%s/\s\+$//

" Substitute all tabs by two whitespaces
command! Untab2 :%s/\t/  /g

" Substitute all tabs by four whitespaces
command! Untab4 :%s/\t/    /g

" <BS> - Remove all trailing white spaces
nnoremap <silent> <BS> :DeleteTrailingWs<CR>
