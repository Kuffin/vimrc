" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just /usr/share/vim/vimfiles/archlinux.vim) and
" sourced by the call to :runtime you can find below.  If you wish to change any of those settings, you should do it in
" this file (/etc/vimrc), since archlinux.vim will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing archlinux.vim since it alters the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are properly set to work with the Vim-related
" packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
"
" Or better yet, read /usr/share/vim/vim72/vimrc_example.vim or the vim manual and configure vim to your own liking!

" >>> Note: to set any value to default, comment the line with \" to disable a setting, add "no" to the beginning.

" Disable compatibility mode
set nocompatible

" include global settings
"if filereadable("/etc/vimrc")
 "source /etc/vimrc
"endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vundle
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax off
filetype plugin indent off

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

call vundle#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" General behavior of Vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
set textwidth=120

" Set whether a line that doesn't fit into a window is wrapped around at
" the end of the window.
set nowrap

" Make Vim wrap long lines at specified characters instead of wrapping at
" the last character in the line.
set nolinebreak


" Show a vertical lign at column 80
set colorcolumn=121

" Display certain whitespace characters
set listchars=tab:»-,extends:@,trail:·
set list

" Show the cursor line by default
set cursorline

" Make 'word' stop at underscores. Does not affect 'Word'.
"set iskeyword-=_


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Window Properties
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Define the default width of the current window
set winwidth=80

" Define the default height of the current window
set winheight=25

" Define the minimal width for a window
"set winminwidth=40

" Define the minimal height for a window
"set winminheight=20


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Wildmenu
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set Wildmenu
set wildmenu

" Make the wild menu auto complete to the longest substring of all matches
set wildmode=list:longest

" A list of file patterns. A file that matches with one of these patterns is
" ignored when expanding wildcards, completing file or directory names, etc.
set wildignore+=.*.swo,.*.swp,.clang_complete,.project.vim,.ycm_extra_conf.py,project.debug,tags,rubber.cache,*.o,*.pyc

" Make completion case-insensitive
set wildignorecase


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Persistent undo
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set undodir=$HOME/.vim/undo/            " where to store undofiles
set undofile                            " enable undofile
set undolevels=500                      " max undos stored
set undoreload=10000                    " buffer stored undos


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Encryption
"
" see :help 'cm'
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set cryptmethod=blowfish2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Scrolling properties
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set leading/trailing lines for the cursor when moving vertically.
set scrolloff=7

" Set leading/trailing columns for the cursor when moving horizontally.
set sidescrolloff=15

" Set the amount of columns to scroll horizontally, when the end of the window is reached.
set sidescroll=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Indentation rules
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Number of spaces a <TAB> counts for
set tabstop=4

" Number of spaces that a Tab counts for while performing editing operations.
set softtabstop=4

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4

" When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'. 'tabstop' is used in other places. A
" <BS> will delete a 'shiftwidth' wide bunch of space at the start of the line.  What gets inserted (a <Tab> or spaces)
" depends on the 'expandtab' option.
set smarttab

" Use the appropriate number of spaces to insert a <Tab>.  Spaces are used in indents with the '>' and '<' commands and
" when 'autoindent' is on. To insert a real tab when 'expandtab' is on, use CTRL-V <Tab>.
set expandtab

" Copy indent from current line when starting a new line (typing <CR> in Insert Mode or when using the "o" or "O"
" command).
set autoindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Search properties
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Allow 'search next' to jump back to the beginning of the file if the end was reached (equivalent for 'search
" previous').
set nowrapscan

" Set whether to highlight matches for previous search patterns.
set hlsearch

" While typing a search command, show immediately where the so far typed
" pattern matches.
set incsearch

" Whether to be case sensitive when searching
set smartcase


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined folding
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Define where to create folds
set foldmethod=marker

" Set the number of screen line above which a fold can be displayed closed.
set foldminlines=3

" Define the maximum nesting of folds (for the 'indent' and 'syntax' methods).
set foldnestmax=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vim auto completion
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't set completeopt, as YCM overrides it anyway

" Limit popup menu height
set pumheight=15

" Close invisible preview windows
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Conceal feature configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set conceallevel
set conceallevel=2

" Set concealcursor strategy
"
" n - Normal mode
" v - Visual mode
" i - Insert mode
" c - Command line editing
set concealcursor="nc"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"}}}
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions=c,q,r,l


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined commands
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Alias to vertically resize the current window
"command! -nargs=+ Say :echo <q-args>
command! -nargs=1 V :vertical resize <args>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Alternative Escape key
inoremap q <Esc>
nnoremap q <Esc>
vnoremap q <Esc>
cnoremap q <Esc>
onoremap q <Esc>

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

" Cycle Tabs
nnoremap <silent> <Tab> :tabnext<CR>
nnoremap <silent> <S-Tab> :tabprevious<CR>

" Pressing Ctrl+P now has the same behavior as Ctrl-I had
" FIXME: not working as expected
"nnoremap <silent> <C-P> g,

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Tag list
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "name"
let Tlist_WinWidth = 80


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" LaTeX
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
let g:tex_conceal="adgms"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" ProVerif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlighting for proverif files (SPI calculus)
augroup filetype
  au! BufRead,BufNewFile *.pv set filetype=tpi
  au FileType tpi source ~/.vim/syntax/tpi.vim
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Make
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Define filetype for Makefiles
augroup filetype
 au! BufRead,BufNewFile *Makefile* set filetype=make
augroup END

" Set the default make program
set makeprg=make\ -j4


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" C/C++
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup filetype
  au! BufNewFile,BufRead *.c,*.cpp,*.cc,*.h,*.hpp set cindent
augroup END

"
" Allows to jump to the alternate file, e.g. the header file for a C file
"
let g:alternateNoDefaultAlternate = 1
let g:alternateExtensions_h = "c,cpp,cxx,cc,CC,hpp,h"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" LLVM
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting for LLVM files. To use, copy
" utils/vim/llvm.vim to ~/.vim/syntax .
augroup filetype
  au! BufRead,BufNewFile *.ll set filetype=llvm
augroup END

augroup filetype
  au! BufRead,BufNewFile *.td set filetype=tablegen
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Eclim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:EclimCompletionMethod = 'omnifunc'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Auto-Pairs
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:AutoPairsFlyMode = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Project Specific Settings
"
" Make sure this is always at the end of your vimrc file!
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" include user-specific settings
"if filereadable("~/.vimrc")
 "source ~/.vimrc
"endif

" include per-project settings
if filereadable(".project.vim")
 source .project.vim
endif
