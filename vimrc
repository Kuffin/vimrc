" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just /usr/share/vim/vimfiles/archlinux.vim) and
" sourced by the call to :runtime you can find below.  If you wish to change any of those settings, you should do it in
" this file (/etc/vimrc), since archlinux.vim will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing archlinux.vim since it alters the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are properly set to work with the Vim-related
" packages.
"runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
"
" Or better yet, read /usr/share/vim/vim72/vimrc_example.vim or the vim manual and configure vim to your own liking!

" >>> Note: to set any value to default, comment the line with \" to disable a setting, add "no" to the beginning.

" Disable compatibility mode
set nocompatible




" Enable mouse itegration
set mouse=a


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vundle
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax off
filetype plugin indent off

set rtp+=~/.vim/vundle/Vundle.vim
call vundle#begin('~/.vim/vundle')

" Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'gmarik/Vundle.vim'
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'vim-scripts/taglist.vim'
"Plugin 'Rip-Rip/clang_complete.git'
Plugin 'rhysd/vim-clang-format.git'
Plugin 'lervag/vimtex.git'
Plugin 'Yggdroot/indentLine.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'jonathanfilip/vim-lucius.git'
Plugin 'sickill/vim-sunburst.git'
Plugin 'justinmk/vim-syntax-extra.git'
Plugin 'mgrabovsky/vim-xverif.git'
Plugin 'SirVer/ultisnips'
"" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/TaskList.vim.git'

call vundle#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" General behavior of Vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting.
syntax on

" Enable filetype specific plugins and indentation
filetype plugin indent on

" Set the standard encoding
set encoding=utf8

" Set the height of the command bar
set cmdheight=1

" Always show the status line
set laststatus=2

" Show tab line if there are at least two pages
set showtabline=1

" Show (partial) command in status line
set showcmd

" Show line numbers.
set number

" Show offset
set relativenumber

" Show the line and column number of the cursor position, seperated by a
" comma.
set ruler

" Makes Vim ask for a confirmation instead of showing an error message.
set confirm

" Set the maximum width of text that is being insterd without breaking it
" to a new line.
" Setting this value to '0' disables this option.
set textwidth=80

" Set whether a line that doesn't fit into a window is wrapped around at
" the end of the window.
set wrap

" Make Vim wrap long lines at specified characters instead of wrapping at
" the last character in the line.
set linebreak

" Show the cursor line by default
set cursorline

" redraw only when we need to
set lazyredraw

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Make 'word' stop at underscores. Does not affect 'Word'.
"set iskeyword-=_

" Set auto reload for files changed externally
set autoread



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Window Properties
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Define the default width of the current window
"set columns=100
"set winwidth=50

" Define the default height of the current window
"set winheight=100
"set lines=60

" Show a vertical lign at column 80
set colorcolumn=81



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Wildmenu
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set Wildmenu
set wildmenu

" Make the wild menu auto complete to the longest substring of all matches
set wildmode=list:longest

" A list of file patterns. A file that matches with one of these patterns is
" ignored when expanding wildcards, completing file or directory names, etc.
set wildignore+=*.o,*.d,*.obj,*.bak,*.exe,*.aux,*.toc,*.backup
set wildignore+=.*.swo,.*.swp,.clang_complete,.project.vim,.ycm_extra_conf.py,project.debug,tags,rubber.cache,*.o,*.pyc

" Display certain whitespace characters
set listchars=tab:»-,extends:@,trail:·
set list

" Make completion case-insensitive
set wildignorecase

" Show the cursor line by default
set cursorline

" Make 'word' stop at underscores. Does not affect 'Word'.
"set iskeyword-=_


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Persistent undo
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set undodir=$HOME/.vim/undo/            " where to store undofiles
set undofile                            " enable undofile
set undolevels=500                      " max undos stored
set undoreload=10000                    " buffer stored undos


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Scrolling properties
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set leading/trailing lines for the cursor when moving vertically.
set scrolloff=7

" Set leading/trailing columns for the cursor when moving horizontally.
set sidescrolloff=15

" Set the amount of columns to scroll horizontally, when the end of the window
" is reached.
set sidescroll=1


" Make the wild menu auto complete to the longest substring of all matches
set wildmode=list:longest


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Indentation rules
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Number of spaces a <TAB> counts for
set tabstop=4

" Number of spaces that a Tab counts for while performing editing
" operations.
set softtabstop=4

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4

" When on, a <Tab> in front of a line inserts blanks according to
" 'shiftwidth'. 'tabstop' is used in other places. A <BS> will delete a
" 'shiftwidth' wide bunch of space at the start of the line.
" What gets inserted (a <Tab> or spaces) depends on the 'expandtab' option.
set smarttab

" Use the appropriate number of spaces to insert a <Tab>.  Spaces are used
" in indents with the '>' and '<' commands and when 'autoindent' is on. To
" insert a real tab when 'expandtab' is on, use CTRL-V <Tab>.
set expandtab

" Copy indent from current line when starting a new line (typing <CR> in Insert
" Mode or when using the "o" or "O" command).
set autoindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Search properties
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Allow 'search next' to jump back to the beginning of the file if the end
" was reached (equivalent for 'search previous').
set wrapscan

" Set whether to highlight matches for previous search patterns.
set hlsearch

" While typing a search command, show immediately where the so far typed
" pattern matches.
set incsearch

" Ignore the case when searching
set ignorecase


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined folding
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Define where to create folds
set foldmethod=marker

" Set the number of screen line above which a fold can be displayed closed.
set foldminlines=3

" Define the maximum nesting of folds (for the 'indent' and 'syntax' methods).
set foldnestmax=2

set nofoldenable    " disable folding


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Spelling
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use ]s to jump to next misspelled word
" use [s to jump to previous misspelled word
" use z= to show alternatives
" use zg to add a word to the dictionary
" use zw to mark words a incorrect

" Enable spellchecking by default (disable it by using :set nospell)
set nospell

" Set languages for spell checking
set spelllang=en_us


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" SuperTab
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" SuperTab option for context aware completion
"let g:SuperTabDefaultCompletionType = "<C-x><C-u>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vim auto completion and appearance
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't set completeopt, as YCM overrides it anyway

" Limit popup menu height
set pumheight=20

" Close invisible preview windows
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" Define a cholor scheme
"
" Here is a list of available color schemes
"   blue
"   darkblue
"   default
"   delek
"   desert
"   elflord
"   evening
"   koehler
"   morning
"   murphy
"   pablo
"   peachpuff
"   ron
"   shine
"   slate
"   torte
"   zellner
"
colorscheme lucius
LuciusBlack

" set the color of the popup menu
highlight Pmenu guibg=brown gui=bold



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Conceal feature configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set conceallevel
"set conceallevel=0

" Set concealcursor strategy
"
" n - Normal mode
" v - Visual mode
" i - Insert mode
" c - Command line editing
"set concealcursor="nc"



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

highlight User1 term=reverse cterm=bold,reverse gui=bold,reverse guifg=White guibg=Red
highlight User2 term=reverse cterm=bold,reverse gui=bold,reverse guifg=Black guibg=White

" default the statusline to green when entering Vim
hi statusline guibg=Black ctermfg=8 guifg=White ctermbg=15

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Format options
"
"{{{
" This is a sequence of letters which describes how automatic formatting is
" to be done.
"
" letter    meaning when present in 'formatoptions'
" ------    ---------------------------------------
" t         Auto-wrap text using textwidth (does not apply to comments).
" c         Auto-wrap comments using textwidth, inserting the current comment
"           leader automatically.
" r         Automatically insert the current comment leader after hitting
"           <ENTER> in Insert Mode.
" o         Automatically insert the current comment leader after hitting 'o' or
"           'O' in Normal mode.
" q         Allow formatting of comments with "gq".
" w         Trailing white space indicates a paragraph continues in the next
"           line.   A line that ends in a non-white character ends a paragraph.
" l         Long lines are not broken in insert mode: When a line was longer
"           than 'textwidth' when the insert command started, Vim does not
"           automatically format it.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions=c,q,r,l


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined commands
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Alias to vertically resize the current window
"command! -nargs=+ Say :echo <q-args>
command! -nargs=1 V :vertical resize <args>

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
"   Command     -   <D-key>
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

" set leader key
let mapleader=','

" set W and Q to the same commands as w and q
command! -bang W w<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang Qa qa<bang>
command! -bang QA qa<bang>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Alternative Escape key
inoremap jk <Esc>

inoremap q <Esc>
nnoremap q <Esc>
vnoremap q <Esc>
cnoremap q <Esc>
onoremap q <Esc>

" C-enter - should open ctags function lookup in a new tab
nmap <C-Enter> <C-w><C-]><C-w>T


" <F2>  - NERD Tree
nnoremap <silent> <F2> :NERDTree<CR>

" <F5> - compile and show messages
map <silent> <F5> :make<CR>:cl<CR>
" <F6> - Show the compiler messages
nnoremap <silent> <F6> :cl<CR>
" <F7> - toggle the tag list plugin window
map <silent> <F7> :TlistUpdate<CR>:TlistToggle<CR>


" <F12> - insert the current date and time
inoremap <silent> <F12> <C-R>=strftime('%c')<CR>
cnoremap <silent> <F12> <C-R>=strftime('%c')<CR>

" Shortcut for arranging text to 'textwidth'
nnoremap w gwgw
inoremap w <C-o>gwgw<CR>
xnoremap w gw
nnoremap <Leader>g gwip


"<Space> - toggle line number style
nnoremap <silent> <Space> :call NumberToggle()<CR>

" <BS> - Remove all trailing whitespaces
nnoremap <silent> <BS> :DeleteTrailingWs<CR>

" <A-F> - Vim's file name completion
inoremap f <C-X><C-F>

" If pressing Tab in Normal Mode, cycle to the next tab
nnoremap <silent> <C-Tab> :tabnext<CR>

" If pressing Shift+Tab in Normal Mode, cycle to the previous tab
nnoremap <silent> <S-Tab> :tabprevious<CR>

" <C-N> - create a new tab and prompt file open dialog
nnoremap <C-N> :tabnew <C-D>

" <A-N> - create new vertical window and prompt file open dialog
nnoremap n <C-W>v<C-W>l:edit <C-D>

" Open the alternate file
nnoremap <silent> ,ff :FSHere<CR>
nnoremap <silent> ,fh <C-W>v:FSHere<CR>
nnoremap <silent> ,fk <C-W>s:FSHere<CR>
nnoremap <silent> ,fj <C-W>s<C-W>j:FSHere<CR>
nnoremap <silent> ,fl <C-W>v<C-W>l:FSHere<CR>

" ,c  - toggle comment (uses NERD_commenter)
nnoremap <silent> <C-C> :call NERDComment(0, "toggle")<CR>
vnoremap <silent> <C-C> :call NERDComment(1, "toggle")<CR>

" <A-J> - Open tag list selection menu
nnoremap j :tselect <C-R>=expand("<cword>")<CR><CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Tag list
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "name"
let Tlist_WinWidth = 80


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



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" ProVerif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlighting for proverif files (SPI calculus)
augroup filetype
  au! BufRead,BufNewFile *.pv set filetype=proverif-pv
  au! BufRead,BufNewFile *.pv set syntax=proverif-pv
  au FileType proverif source /Users/wiamrachid/.vim/vundle/vim-xverif/syntax/proverif-pv.vim
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Make
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Define filetype for Makefiles
augroup filetype
 au! BufRead,BufNewFile *Makefile* set filetype=make
augroup END

" Set the default make program
set makeprg=make\ -j2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" C/C++
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup filetype
  au! BufNewFile,BufRead *.c,*.cpp,*.cc,*.h,*.hpp set cindent
augroup END

"
" Allows to jump to the alternate file, e.g. the header file for a C file
"
let g:alternateNoDefaultAlternate = 1
let g:alternateExtensions_h = "c,cpp,cxx,cc,CC,hpp,h"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" LLVM
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting for LLVM files. To use, copy
" utils/vim/llvm.vim to ~/.vim/syntax .
augroup filetype
  au! BufRead,BufNewFile *.ll set filetype=llvm
augroup END

augroup filetype
  au! BufRead,BufNewFile *.td set filetype=tablegen
augroup END



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" YouCompleteMe
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" number of characters the user needs to type before identifier-based completion
" suggestions are triggered
" NOTE: this option is not used for semantic completion
" Default: 2
let g:ycm_min_num_of_chars_for_completion = 2

" minimum number of characters that a completion candidate coming from the
" identifier completer must have to be shown in the popup menu
" Default: 0
"let g:ycm_min_num_identifier_candidate_chars = 0

" turns off YCM's identifier completer (the as-you-type popup) and the semantic
" triggers
" Default: 1
"let g:ycm_auto_trigger = 1

" controls for which Vim filetypes (see :h filetype) should YCM be turned on
" NOTE: the key '*' matches all filetypes
" Default: {'*' : 1}
"let g:ycm_filetype_whitelist = { '*' : 1 }

" controls for which Vim filetypes (see :h filetype) should YCM be turned off
"let g:ycm_filetype_blacklist = {
      "\ 'tagbar' : 1,
      "\ 'qf' : 1,
      "\ 'notes' : 1,
      "\ 'markdown' : 1,
      "\ 'unite' : 1,
      "\ 'text' : 1,
      "\ 'vimwiki' : 1,
      "\ 'pandoc' : 1,
      "\ 'infolog' : 1,
      "\ 'mail' : 1
      "\}

" Controls for which Vim filetypes (see :h filetype) should the YCM semantic
" completion engine be turned off
" Default: {}
"let g:ycm_filetype_specific_completion_to_disable = {}

" turns on YCM's diagnostic display features
" Default: 1
"let g:ycm_show_diagnostics_ui = 1

" YCM will use the value of this option as the symbol for errors in the Vim
" gutter.
" Default: >>
let g:ycm_error_symbol = '>>'

" YCM will use the value of this option as the symbol for warnings in the Vim
" gutter.
" Default: >>
let g:ycm_warning_symbol = '<>'

" put icons in Vim's gutter on lines that have a diagnostic set
" NOTE: turning this off will also turn off the YcmErrorLine and YcmWarningLine
"       highlighting
" Default: 1
"let g:ycm_enable_diagnostic_signs = 1

" highlight regions of text that are related to the diagnostic that is present
" on a line, if any
" Default: 1
"let g:ycm_enable_diagnostic_highlighting = 1

" echo the text of the diagnostic present on the current line when you move your
" cursor to that line
" Default: 1
let g:ycm_echo_current_diagnostic = 1

" populate the location list automatically every time it gets new diagnostic
" data
" NOTE: off by default to not interfere with other data you might have placed in
"       the location list
" Default: 0
"let g:ycm_always_populate_location_list = 0

" :YcmDiags will automatically open the location list after forcing a
" compilation and filling the list with diagnostic data
" Default: 1
"let g:ycm_open_loclist_on_ycm_diags = 1

" change the updatetime Vim option to 2000
" This may conflict with some other plugins you have (but it's unlikely). The
" updatetime option is the number of milliseconds that have to pass before Vim's
" CursorHold (see :h CursorHold) event fires. YCM runs the completion engines'
" "file comprehension" systems in the background on every such event; the
" identifier-based engine collects the identifiers whereas the semantic engine
" compiles the file to build an AST.
" Default: 1
"let g:ycm_allow_changing_updatetime = 1

" show the completion menu even when typing inside comments
" Default: 0
let g:ycm_complete_in_comments = 0

" show the completion menu even when typing inside strings
" NOTE: turned on by default so that you can use the filename completion inside
"       strings. very useful for #include
" Default: 1
"let g:ycm_complete_in_strings = 1

" collect identifiers from strings and comments
" Default: 0
"let g:ycm_collect_identifiers_from_comments_and_strings = 0

" collect identifiers from tags files
" Default: 0
"let g:ycm_collect_identifiers_from_tags_files = 0

" seed its identifier database with the keywords of the programming language
" you're writing
" Default: 0
"let g:ycm_seed_identifiers_with_syntax = 0

" a way of sending data from Vim to your FlagsForFile function in your
" .ycm_extra_conf.py file
" Default: []
"let g:ycm_extra_conf_vim_data = []

" force the use of a specific interpreter of your choosing
" NOTE: The YCM client running inside Vim always uses the Python interpreter
"       that's embedded inside Vim.
" Default: ''
"let g:ycm_path_to_python_interpreter = ''

" By default, the ycmd completion server writes logs to logfiles. When this
" option is set to 1, the server writes logs to Vim's stdout (so you'll see them
" in the console).
" Default: 0
"let g:ycm_server_use_vim_stdout = 0

" keep the logfiles around after shutting down (they are deleted on shutdown by
" default)
" Default: 0
"let g:ycm_server_keep_logfiles = 0

" The logging level that the ycmd completion server uses.
"   debug
"   info
"   warning
"   error
"   critical
"
" Default: info
"let g:ycm_server_log_level = 'info'

" OmniSharp server will be automatically started (once per Vim session) when you
" open a C# file.
" Default: 1
" let g:ycm_auto_start_csharp_server = 1

" OmniSharp server will be automatically stopped upon closing Vim.
" Default: 1
"let g:ycm_auto_stop_csharp_server = 1

" Default: 0
let g:ycm_add_preview_to_completeopt = 1

" Default: 0
"let g:ycm_autoclose_preview_window_after_completion = 0

" Default: 0
let g:ycm_autoclose_preview_window_after_insertion = 0

" maximum number of diagnostics shown to the user when errors or warnings are
" detected
" Default: 30
let g:ycm_max_diagnostics_to_display = 10

" This option controls the key mappings used to select the first completion
" string. Invoking any of them repeatedly cycles forward through the completion
" list.
" NOTE: <C-N> also works
" Default: ['<TAB>', '<Down>']
let g:ycm_key_list_select_completion = []

" NOTE: <C-P> also works
" Default: ['<S-TAB>', '<Up>']
let g:ycm_key_list_previous_completion = []

" key mapping used to invoke the completion menu for semantic completion
" Default: <C-Space>
let g:ycm_key_invoke_completion = '<C-Space>'

" This option controls the key mapping used to show the full diagnostic text
" when the user's cursor is on the line with the diagnostic.
" Default: <leader>d
let g:ycm_key_detailed_diagnostics = '<D-Space>'

" This option specifies a fallback path to a config file which is used if no
" .ycm_extra_conf.py is found.
" Default: ''
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" When this option is set to 1 YCM will ask once per .ycm_extra_conf.py file if
" it is safe to be loaded. This is to prevent execution of malicious code from a
" .ycm_extra_conf.py file you didn't write.
" Default: 1
let g:ycm_confirm_extra_conf = 0

" By default, YCM's filepath completion will interpret relative paths like ../
" as being relative to the folder of the file of the currently active buffer.
" Setting this option will force YCM to always interpret relative paths as being
" relative to Vim's current working directory.
" Default: 0
let g:ycm_filepath_completion_use_working_dir = 1
"let g:ycm_semantic_triggers =  {
  "\   'c' : ['->', '.'],
  "\   'objc' : ['->', '.'],
  "\   'ocaml' : ['.', '#'],
  "\   'cpp,objcpp' : ['->', '.', '::'],
  "\   'perl' : ['->'],
  "\   'php' : ['->', '::'],
  "\   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  "\   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
  "\   'ruby' : ['.', '::'],
  "\   'lua' : ['.', ':'],
  "\   'erlang' : [':'],
  "\ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Clang Complete
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 0 - do not complete after ->, ., ::
" 1 - automatically complete after ->, ., ::
let g:clang_complete_auto = 1

" 0 - Select nothing
" 1 - Automatically select the first entry in the popup menu, but do not
" insert it into the code.
" 2 - Automatically select the first entry in the popup menu, and insert it
" into the code.
let g:clang_auto_select = 1

" 0 - do not open quickfix window on error.
" 1 - open quickfix window on error.
let g:clang_complete_copen=1

" 0 - do not highlight the warnings and errors
" 1 - highlight the warnings and errors the same way clang does it
let g:clang_hl_errors=1

let g:clang_user_options='|| exit 0'

" use libclang directly, fast due to caching
let g:clang_use_library=1

" tell clang_complete where to find libclang
let g:clang_library_path = '/Library/Developer/CommandLineTools/usr/lib/'
let g:clang_exec = '/Library/Developer/CommandLineTools/usr/bin/'

" 0 - do not do some snippets magic on code placeholders like function argument,
"     template argument, template parameters, etc.
" 1 - do some snippets magic on code placeholders like function argument,
"     template argument, template parameters, etc.
let g:clang_snippets = 1

" The snippets engine (clang_complete, ultisnips... see the snippets
" subdirectory).
let g:clang_snippets_engine = "ultisnips"

let g:clang_conceal_snippets=1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Eclim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:EclimCompletionMethod = 'omnifunc'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Arduino
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au! BufRead,BufNewFile *.ino set filetype=cpp


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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Auto-Pairs
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"this flymode is a little buggy
"let g:AutoPairsFlyMode = 1

"it is annoying to add $$ in the autopair completion when teXing
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`','$':'$'}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Clang-Format
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"g:clang_format#code_style is a base style.
"llvm, google, chromium, mozilla is supported. The default value is google.
let g:clang_format#code_style = "llvm"

let g:clang_format#style_options = {
            \ "AllowShortBlocksOnASingleLine" : "false",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \ "AllowShortCaseLabelsOnASingleLine" : "false",
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortLoopsOnASingleLine" : "false",
            \ "ColumnLimit" : "80",
            \ "Standard" : "C++11"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" IndentLine
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:indentLine_enabled = 1

" defines the number of indenttabs are shown
" default is 10
let g:indentLine_indentLevel = 25



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" CtrlP
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use this option to change the mapping to invoke CtrlP in |Normal| mode
let g:ctrlp_map = '<c-p>'

" Set the default opening command to use when pressing the above mapping
let g:ctrlp_cmd = 'CtrlP'

" Change the postion, the listing order of results, the minimum and the maximum
" heights of the match window
" default: ''
" Example:
"   let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
" The position: (default: bottom)
"   top - show the match window at the top of the screen.
"   bottom - show the match window at the bottom of the screen.
" The listing order of results: (default: btt)
"   order:ttb - from top to bottom.
"   order:btt - from bottom to top.
" The minimum and maximum heights:
"   min:{n} - show minimum {n} lines (default: 1).
"   max:{n} - show maximum {n} lines (default: 10).
" The maximum number of results:
"   results:{n} - list maximum {n} results (default: sync with max height).
" Note: When a setting isn't set, its default value will be used.
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'

" When starting up, CtrlP sets its local working directory according to this
" variable:
" default: 'ra'
" c - the directory of the current file.
" a - like "c", but only applies when the current working directory outside of
"     CtrlP isn't a direct ancestor of the directory of the current file.
" r - the nearest ancestor that contains one of these directories or files:
"     .git .hg .svn .bzr _darcs
" w - begin finding a root from the current working directory outside of CtrlP
"     instead of from the directory of the current file (default). Only applies
"     when "r" is also present.
" 0 or <empty> - disable this feature.
" Note1: if "a" or "c" is included with "r", use the behavior of "a" or "c" (as
"   a fallback) when a root can't be found.
" Note2: you can use a |b:var| to set this option on a per buffer basis.
let g:ctrlp_working_path_mode = ''

" Set this to 1 if you want CtrlP to scan for dotfiles and dotdirs
" default: 0
let g:ctrlp_show_hidden = 1

" Enable/Disable per-session caching
" default: 1
let g:ctrlp_use_caching = 1

" Set this to 0 to enable cross-session caching by not deleting the cache files
" upon exiting Vim
" default: 1
let g:ctrlp_clear_cache_on_exit = 0




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" UltiSnips
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<a-Space>"
let g:UltiSnipsListSnippets="<a-Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


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
