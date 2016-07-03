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
