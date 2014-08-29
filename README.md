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


### Project-specific vimrc

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
| n               | `BackSpace`       | removes all trailing whitespaces                                          |
| n               | `Tab`             | switch to next tab                                                        |
| n               | `Shift` + `Tab`   | switch to previous tab                                                    |
| n               | `Ctrl` + `N`      | creates a new tab, and prompts the file open dialog                       |
| n               | `Alt` + `N`       | creates a new vertical window, and prompts the file open dialog           |
| n               | `Ctrl` + `C`      | toggle comment for the current line/block                                 |
| n               | `,t`              | opens the alternate file in a new tab                                     |
| n               | `,v`              | vertically splits the current window and opens the alternate file         |
| n               | `Alt` + `J`       | opens the tag list selection window                                       |
| v               | `*`               | forward search for the marked text                                        |
| v               | `#`               | backwards search for the marked text                                      |
| i,c             | `F1`              | opens the VIm help                                                        |
| n               | `F2`              | opens the NERD Tree (NERD Tree plugin needed)                             |
| n               | `F3`              | toggles Spell on/off                                                      |
| n               | `F5`              | toggles the Taglist window                                                |
| n               | `F6`              | shows compiler messages                                                   |
| n,i             | `F12`             | inserts the current date and time                                         |


Commands
--------

| Command / Function               | Effect                                                     |
|----------------------------------|------------------------------------------------------------|
| Untab2                           | replaces all tabs by 2 spaces                              |
| Untab4                           | replaces all tabs by 4 spaces                              |
| V \<cols\>                       | vertically resize the current window to \<cols\> columns   |
| Ctags                            | creates a C    tags file for all files in the current directory (subdirectories included) |
| Cpptags                          | creates a C++  tags file for all files in the current directory (subdirectories included) |
| Cstags                           | creates a C#   tags file for all files in the current directory (subdirectories included) |


Used Plugins
------------

* Spell
* Clang Complete
* Alternate file
* Taglist
* VIm LaTeX Suite
* NERD Tree
* NERD_commenter


Screenshots
-----------

![Screenshot 1](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/1.png "Screenshot 1")
![Screenshot 2](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/2.png "Screenshot 2")
![Screenshot 3](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/3.png "Screenshot 3")
