""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Window Properties
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Define the default width of the current window
set columns=100

" Define the default height of the current window
"set winheight=100



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined commands
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Custom keymaps
"
"{{{
" {cmd} {attr} {lhs} {rhs}
"
" {cmd} : of the form <?>map, <?>noremap or <?>unmap,
"         where  <?>  can be one of the following:
"
"       :   -   normal, visual, select and operator pending mode
"       :!  -   insert and command-line mode
"       :n  -   normal mode
"       :i  -   insert mode
"       :v  -   visual and select mode
"       :s  -   select mode
"       :x  -   visual mode
"       :c  -   command-line mode
"       :o  -   operator pending mode
"
" {attr} :  optional, one or more of the following
"
"       <buffer>    -   the mapping will by effective in the
"                       current buffer only
"       <silent>    -   the mapping will not be echoed in
"                       the command line
"       <expr>
"       <script>    -   the mapping will only remap charachters
"                       using mappings that were defined local
"       <unique>    -   lets the command fail if the mapping or
"                       abbreviation already exists
"       <special>   -   useful to suppress side effect when
"                       mapping with <> notation for special
"                       charachters such as digraphs, umlauts, or accent
"
" Key modifiers:
"   Control     -   <C-key>
"   Shift       -   <S-key>
"   Alt         -   <A-key> or <M-key>
"   Super       -   <T-key>
"
" Special keys:
"   <BS>           Backspace
"   <Tab>          Tab
"   <CR>           Enter
"   <Enter>        Enter
"   <Return>       Enter
"   <Esc>          Escape
"   <Space>        Space
"   <Up>           Up arrow
"   <Down>         Down arrow
"   <Left>         Left arrow
"   <Right>        Right arrow
"   <F1> - <F12>   Function keys 1 to 12
"   #1, #2..#9,#0  Function keys F1 to F9, F10
"   <Insert>       Insert
"   <Del>          Delete
"   <Home>         Home
"   <End>          End
"   <PageUp>       page-up
"   <PageDown>     page-down
"}}}
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Project Specific Settings
"
" Make sure this is always at the end of your vimrc file!
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"include per-project settings
if filereadable(".project.vim")
  source .project.vim
endif
