""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" CTags
"
" Generates ctags files for the current directory
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

com! -nargs=1 Ctags !ctags -R --sort=yes --c-kinds=+fmstp --fields=+amS --language-force=C <f-args>
com! -nargs=1 Cpptags !ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ <f-args>
com! -nargs=1 Cstags !ctags -R --sort=yes --c#-kinds=+p --fields=+iaS --extra=+q --language-force=C# <f-args>
