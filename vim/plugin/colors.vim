""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Colors & Highlighting
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" When set to "dark", Vim will try to use colors that look good on a dark
" background. When set to "light", Vim will try to use colors that look good
" on a light background. Any other value is illegal.
set background=dark

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
"colorscheme solarized


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Solarized
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" This is set to 16 by default, meaning that Solarized will attempt to use the
" standard 16 colors of your terminal emulator. You will need to set those
" colors to the correct Solarized values either manually or by importing one of
" the many colorscheme available for popular terminal emulators and Xresources.
"let g:solarized_termcolors=256

" If you use a terminal emulator with a transparent background and Solarized
" isn't displaying the background color transparently, set this to 1 and
" Solarized will use the default (transparent) background of the terminal
" emulator. urxvt required this in my testing; iTerm2 did not.
"g:solarized_termtrans =   0       |   1

" For test purposes only; forces Solarized to use the 256 degraded color mode to
" test the approximate color values for accuracy.
"g:solarized_degrade   =   0       |   1

" If you wish to stop Solarized from displaying bold, underlined or italicized
" typefaces, simply assign a zero value to the appropriate variable, for
" example: let g:solarized_italic=0
"g:solarized_bold      =   1       |   0
"g:solarized_underline =   1       |   0
"g:solarized_italic    =   1       |   0

" Stick with normal! It's been carefully tested. Setting this option to high or
" low does use the same Solarized palette but simply shifts some values up or
" down in order to expand or compress the tonal range displayed.
"g:solarized_contrast  =   "normal"|   "high" or "low"

" Special characters such as trailing whitespace, tabs, newlines, when displayed
" using :set list can be set to one of three levels depending on your needs.
" Default value is normal with high and low options.
"g:solarized_visibility=   "normal"|   "high" or "low"
"let g:solarized_visibility="normal"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined highlighting
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi! ColorColumn term=reverse cterm=reverse
hi! CursorLineNr term=bold,reverse cterm=bold,reverse ctermfg=6
" General colors
"hi Cursor   guifg=NONE    guibg=#656565 gui=none
"hi Normal   guifg=#000000 guibg=#FFFFFF gui=none
"hi NonText   guifg=#808080 guibg=#FFFFFF gui=none
"hi LineNr   guifg=#857b6f guibg=#FFFFFF gui=none
"hi StatusLine  guifg=#000000 guibg=#FFFFFF gui=none
"hi StatusLineNC guifg=#857b6f guibg=#FFFFFF gui=none
"hi VertSplit  guifg=#444444 guibg=#FFFFFF gui=none
"hi Folded   guibg=#AAAAAA guifg=#FFFFFF gui=none
"hi Title  guifg=#000000 guibg=NONE gui=none
"hi Visual  guifg=#000000 guibg=#FFFFFF gui=none
"hi SpecialKey guifg=#808080 guibg=#FFFFFF gui=none
