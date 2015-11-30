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
