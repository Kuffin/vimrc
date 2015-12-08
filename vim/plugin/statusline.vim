""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined statusline
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" seperator used in the status line
let g:statusline_sep_left='╲'
let g:statusline_sep_right='╱'

function! StatuslineMode()
    let l:mode = mode()
    if l:mode ==# "n"
        let l:modestr="N "
    elseif l:mode ==# "i"
        let l:modestr="I "
    elseif l:mode ==# "v"
        let l:modestr="V "
    elseif l:mode ==# "V"
        let l:modestr="VL"
    elseif l:mode ==# ""
        let l:modestr="VB"
    elseif l:mode ==# "R"
        let l:modestr="R "
    elseif l:mode ==# "s"
        let l:modestr="S "
    elseif l:mode ==# "S"
        let l:modestr="SL"
    elseif l:mode ==# ""
        let l:modestr="SB"
    elseif l:mode ==# "Rv"
        let l:modestr="VR"
    elseif l:mode ==# "no"
        let l:modestr="NO"
    else
        let l:modestr=l:mode
    endif
    let b:statusline_mode = "   ".l:modestr." "
    return b:statusline_mode
endfunction

function! StatuslineFileName()
    let b:statusline_filename = ""
    if len(expand('%')) > 0
        if &ft ==# "help"
            let b:statusline_filename = "help: ".expand('%:t:r')." "
        else
            let b:statusline_filename = expand('%')." "
        endif
    endif
    return b:statusline_filename
endfunction

function! StatuslineAttributes()
    let b:statusline_attributes = ""
    if &ft ==# "help"
        return ""
    endif
    if &modifiable && &modified
        let b:statusline_attributes .= "mod"
    elseif !&modifiable
        let b:statusline_attributes .= "umod"
    endif
    if &readonly
        if len(b:statusline_attributes) > 0
            let b:statusline_attributes .= ","
        endif
        let b:statusline_attributes .= "read"
    endif
    if len(b:statusline_attributes) > 0
        let b:statusline_attributes .= " "
    endif
    return b:statusline_attributes
endfunction

function! StatuslineFileInfo()
    let b:statusline_fileinfo = ''
    if &ft ==# "help"
        return ""
    endif
    " only display fileformat if it differs from the default
    if len(&fileformat) > 0 && !(&fileformat ==# (split(&fileformats,','))[0])
        let b:statusline_fileinfo .= g:statusline_sep_right." ".&fileformat." "
    endif
    " only display fileencoding if it differs from the internal representation
    if len(&fileencoding) && !(&fileencoding ==# &encoding) > 0
        let b:statusline_fileinfo .= g:statusline_sep_right." ".&fileencoding." "
    endif
    if len(&filetype) > 0
        let b:statusline_fileinfo .= g:statusline_sep_right." ".&filetype." "
    endif
    return b:statusline_fileinfo
endfunction

function! ConditionalSep(fn, left)
    let l:str = a:fn()
    if len(l:str) > 0
        if a:left
            return " ".g:statusline_sep_left." "
        else
            return " ".g:statusline_sep_right." "
        endif
    endif
    return ""
endfunction

highlight User1 term=reverse cterm=reverse gui=reverse guifg=#657b83 guibg=#bc120f
highlight User2 term=reverse cterm=bold,reverse gui=bold,reverse guifg=#657b83 guibg=#004b92

"
" Set statusline
"
set statusline=%2*%{StatuslineMode()}%*
set statusline+=%{g:statusline_sep_left}\ "
set statusline+=%<
set statusline+=%{StatuslineFileName()}"
set statusline+=%{ConditionalSep(function('StatuslineFileName'),1)}
set statusline+=%1*
set statusline+=%{StatuslineAttributes()}
set statusline+=%w
set statusline+=%*
set statusline+=%{ConditionalSep(function('StatuslineAttributes'),1)}
set statusline+=%=
set statusline+=%{StatuslineFileInfo()}
set statusline+=%{g:statusline_sep_right}
set statusline+=\ %3.l:%2v\ "
set statusline+=%{g:statusline_sep_right}
set statusline+=\ %3p%%\ "



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 "User-defined statusline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"recalculate the warnings when idle and after saving
"autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning
"autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning
"autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"return a warning for "long lines" where "long" is either &textwidth or 80 (if
"no &textwidth is set)

"return '' if no long lines
"return '[#x,my,$z] if long lines are found, were x is the number of long
"lines, y is the median length of the long lines and z is the length of the
"longest line
"function! StatuslineLongLineWarning()
    "if !exists("b:statusline_long_line_warning")
        "let long_line_lens = s:LongLines()

        "if len(long_line_lens) > 0
            "let b:statusline_long_line_warning = 'long'
        "else
            "let b:statusline_long_line_warning = ''
        "endif
    "endif
    "return b:statusline_long_line_warning
"endfunction

"return a list containing the lengths of the long lines in this buffer
"function! s:LongLines()
    "let threshold = (&tw ? &tw : 80)
    "let spaces = repeat(" ", &ts)

    "let long_line_lens = []

    "let i = 1
    "while i <= line("$")
        "let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
        "if len > threshold
            "call add(long_line_lens, len)
        "endif
        "let i += 1
    "endwhile

    "return long_line_lens
"endfunction

"find the median of the given array of numbers
"function! s:Median(nums)
    "let nums = sort(a:nums)
    "let l = len(nums)

    "if l % 2 == 1
        "let i = (l-1) / 2
        "return nums[i]
    "else
        "return (nums[l/2] + nums[(l/2)-1]) / 2
    "endif
"endfunction

 "return '[&et]' if &et is set wrong
 "return '[mixed-indenting]' if spaces and tabs are used to indent
 "return an empty string if everything is fine
"function! StatuslineTabWarning()
    "if !exists("b:statusline_tab_warning")
        "let tabs = search('^\t', 'nw') != 0
        "let spaces = search('^ ', 'nw') != 0

        "if tabs && spaces
            "let b:statusline_tab_warning =  'mixed'
        "elseif (spaces && !&et)
            "let b:statusline_tab_warning = "spaces"
        "elseif (tabs && &et)
            "let b:statusline_tab_warning = "tabs"
        "else
            "let b:statusline_tab_warning = ''
        "endif
    "endif
    "return b:statusline_tab_warning
"endfunction

 "return '\s' if trailing white space is detected
 "return '' otherwise
"function! StatuslineTrailingSpaceWarning()
    "if !exists("b:statusline_trailing_space_warning")
        "if search('\s\+$', 'nw') != 0
            "let b:statusline_trailing_space_warning = '\s'
        "else
            "let b:statusline_trailing_space_warning = ''
        "endif
    "endif
    "return b:statusline_trailing_space_warning
"endfunction

 "Combine multiple statusline informations to one string
"function! StatuslineCombined()
    "let text = ''

    "let next = StatuslineLongLineWarning()
    "if len(next) > 0
        "let text .= next
    "endif

    "let next = StatuslineTabWarning()
    "if len(next) > 0
        "if len(text) > 0
            "let text .= ','
        "endif
        "let text .= next
    "endif

    "let next = StatuslineTrailingSpaceWarning()
    "if len(next) > 0
        "if len(text) > 0
            "let text .= ','
        "endif
        "let text .= next
    "endif

    "if len(text) > 0
        "let text = '[' . text . ']'
    "endif

    "return text
"endfunction


 "Custom colors for the statusline
"hi User1 term=bold cterm=bold ctermfg=0 ctermbg=2
"hi User2 term=bold,reverse cterm=bold,reverse ctermbg=1 ctermfg=6
"hi User3 term=bold cterm=bold ctermfg=0 ctermbg=3

"set statusline=\ \ 
"set statusline+=%{expand('%')}                   relative path of current file
"set statusline+=\ [
"set statusline+=%{strlen(&fenc)?&fenc:'none'},   file encoding
"set statusline+=%{&ff}                           file format
"set statusline+=]
"set statusline+=%y                               filetype
"set statusline+=%h                               help file flag
"set statusline+=%r                               read-only flag
"set statusline+=\ \ -\ %{getcwd()}              print CWD
"set statusline+=%=                              left/right seperator
"set statusline+=\ -\ 
"set statusline+=%c,                              cursor column
"set statusline+=%1*%l%*/%L                       cursor line/total lines
"set statusline+=\ %P                             percent through file
"set statusline+=\ 
"set statusline+=%2*%m%*                          modified flag
"set statusline+=\ %3*%{StatuslineCombined()}%*
