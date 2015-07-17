function! ShowProjectTree()
    ProjectTree
    nmap <buffer><silent> q :q<CR>
endfunc

function! ShowProjectProblems()
    ProjectProblems
    nmap <buffer><silent> q :q<CR>
endfunc

augroup filetype
    " <S-F2> for ProjectTree
    au FileType java nmap <buffer><silent>  [1;2Q :call ShowProjectTree()<CR>
    au FileType java nmap <buffer>          <F5>    :Java %<Space>
    au FileType java nmap <buffer><silent>  <F6>    :JUnit %<CR>
    au FileType java nmap <buffer><silent>  <F8>    :call ShowProjectProblems()<CR>
    au FileType java nmap <buffer><silent>  <F9>    :JavaImportOrganize<CR>
    au FileType java nmap <buffer><silent>  <F10>   :JUnitImpl<CR>
augroup END
