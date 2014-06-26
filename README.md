Vimrc
=====

Features
--------

* very good documentation, almost every line of code is documented
* lots of useful key short-cuts, Macros, Commands etc. (see below)
* easily customizable
* custom status-line
* allows user-specific `~/.vimrc`
* allows project specific vimrc ;)


### User-specific ~/.vimrc

This vimrc automatically sources a `~/.vimrc`, if available.
Make sure, the command to source `~/.vimrc` remains at the end of this vimrc,
otherwise user-specific commands may be overwritten.

**IMPORTANT:** If you store the vimrc as `~/.vimrc`, you have to remove the line
that sources `~/.vimrc`, else there is a cyclic dependence!


### User-specific vimrc

When **VIm** starts, it auomatically sources the `.project.vim` file from the
current directory, if available.  This allows you to adapt **VIm** to specific
projects.


Keymap
------

| Mode            | Keys              | Effect                                                                    |
|-----------------|-------------------|---------------------------------------------------------------------------|
| n,i,v,c,o       | `Alt` + `Q`       | like `Esc` (trust me, you will love this)                                 |
| n,i             | `Alt` + `W`       | format the current line at the 80th column (like `gwgw`)                  |
| i               | `Alt` + `F`       | file completion, like `Ctrl` + `X`, `Ctrl` + `F`                          |
| n               | `Space`           | toggles between regular line numbering and hybrid mode                    |
| n               | `Tab`             | switch to next tab                                                        |
| n               | `Shift` + `Tab`   | switch to previous tab                                                    |
| n               | `Ctrl` + `P`      | same as `Ctrl` + `I` before remapping `Tab` (*not working*)               |
| n               | `Ctrl` + `N`      | creates a new, empty tab                                                  |
| n               | `Alt` + `N`       | splits the current window vertically and opens a file                     |
| i,c             | `F3`              | inserts the current time and date                                         |
| n               | `F8`              | removes all training whitespaces                                          |
| n               | `F9`              | toggle the tag list plugin window                                         |
| n               | `F12`             | prints compiler output, like `:cl`                                        |
| n               | `,t`              | opens the alternate file in a new tab                                     |
| n               | `,v`              | vertically splits the current window and opens the alternate file         |
| n               | `Alt` + `J`       | opens the tag list selection window                                       |
| v               | `*`               | forward search for the marked text                                        |
| v               | `#`               | backwards search for the marked text                                      |


Commands
--------

| Command / Function               | Effect                                                     |
|----------------------------------|------------------------------------------------------------|
| Untab2                           | replaces all tabs by 2 spaces                              |
| Untab4                           | replaces all tabs by 4 spaces                              |
| V <cols>                         | vertically resize the current window to <cols> columns     |
| Ctags                            | creates a C    tags file for all files in the current directory (subdirectories included) |
| Cpptags                          | creates a C++  tags file for all files in the current directory (subdirectories included) |
| Cstags                           | creates a C#   tags file for all files in the current directory (subdirectories included) |


Used Plugins
------------

* Spell
* Clang Complete
* Alternate file
* VIm LaTeX Suite


Screenshots
-----------

![Screenshot 1](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/1.png "Screenshot 1")
![Screenshot 2](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/2.png "Screenshot 2")
![Screenshot 3](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/3.png "Screenshot 3")
