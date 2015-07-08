Vimrc
=====

Features
--------

* very good documentation, almost every line of code is documented
* lots of useful key short-cuts, Macros, Commands etc. (see below)
* uses [Vundle](https://github.com/gmarik/Vundle.vim) to manage plugins
* easily customizable
* custom status-line
* ~~allows user-specific `~/.vimrc`~~
* allows project specific vimrc ;)


### Plugin management with *Vundle*

All used plugins are managed via [Vundle](https://github.com/gmarik/Vundle.vim).  If you don't know it, stop reading and
check it out right now!
This *VIm* setup requires *Vundle*, and it is recommendet to install it before deploying this configuration.
To install all mentioned plugins, simply do `:PluginInstall`.


### User-specific ~/.vimrc (**DEPRECATED**)

This vimrc automatically sources a `~/.vimrc`, if available.
Make sure, the command to source `~/.vimrc` remains at the end of this vimrc,
otherwise user-specific commands may be overwritten.

*IMPORTANT:* If you store the vimrc as `~/.vimrc`, you have to remove the line
that sources `~/.vimrc`, else there is a cyclic dependence!


### Project-specific vimrc

When *VIm* starts, it auomatically sources the `.project.vim` file from the
current directory, if available.  This allows you to adapt *VIm* to specific
projects.


Keymap
------

| Mode            | Keys              | Effect                                                                    |
|-----------------|-------------------|---------------------------------------------------------------------------|
| n,i,v,c,o       | `Alt` + `Q`       | like `Esc` (trust me, you will love this)                                 |
| n,i             | `Alt` + `W`       | automatically wrap the text at `text width` (like `gwgw`)                 |
| i               | `Alt` + `F`       | ~~file completion~~ deprecated, rely on YCM's automagic path completion   |
| n               | `Space`           | toggles between regular line numbering and hybrid mode                    |
| n               | `BackSpace`       | removes all trailing whitespaces                                          |
| n               | `Tab`             | switch to next tab                                                        |
| n               | `Shift` + `Tab`   | switch to previous tab                                                    |
| n               | `Ctrl` + `N`      | creates a new tab, and prompts the file open dialog                       |
| n               | `Alt` + `N`       | creates a new vertical window, and prompts the file open dialog           |
| n               | `Ctrl` + `C`      | toggle comment for the current line/block (*NERDCommenter*)               |
| n               | `,ff`             | switches to the alternate file (*FSwitch*)                                |
| n               | `,fh`             | opens the alternate file left of the current window (*FSwitch*)           |
| n               | `,fj`             | opens the alternate file below the current windo (*FSwitch*)              |
| n               | `,fk`             | opens the alternate file above the current windo (*FSwitch*)              |
| n               | `,fl`             | opens the alternate file right of the current windo (*FSwitch*)           |
| n               | `Alt` + `J`       | opens the tag list selection window (ctags)                               |
| v               | `*`               | forward search for the visually marked text                               |
| v               | `#`               | backwards search for the visually marked text                             |
| i,c             | `F1`              | opens the VIm help                                                        |
| n               | `F2`              | opens the NERD Tree (NERD Tree plugin needed)                             |
| n               | `F3`              | toggles Spell on/off                                                      |
| n               | `F5`              | toggles the TagList window (TagList)                                      |
| n               | `F6`              | shows compiler messages                                                   |
| n,i             | `F12`             | inserts the current date and time                                         |

Status Line
-----------

The status line is kept minimalistic. I didn't want a blown-up thing like Powerline.
For this reason everything is left aligned.
When you intermix tabs with white spaces for indentation, have trailing white spaces, or have lines longer than
text width, the status line will show a short warning. (See Screenshot #5)

Commands
--------

| Command / Function               | Effect                                                     |
|----------------------------------|------------------------------------------------------------|
| Untab2                           | replaces all tabs by 2 spaces                              |
| Untab4                           | replaces all tabs by 4 spaces                              |
| V \<cols\>                       | vertically resize the current window to \<cols\> columns   |
| Ctags \<PATH\>                   | creates a C    tags file for all files in the specified directory (subdirectories included) |
| Cpptags \<PATH\>                 | creates a C++  tags file for all files in the specified directory (subdirectories included) |
| Cstags \<PATH\>                  | creates a C#   tags file for all files in the specified directory (subdirectories included) |


Used Plugins
------------

* Spell
* Clang Complete (not in use)
* YouCompleteMe
* Alternate file
* Taglist
* VIm LaTeX Suite
* NERD Tree
* NERD_commenter
* Solarized Color Scheme


Screenshots
-----------

![Screenshot 1](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/1.png "Screenshot 1")
![Screenshot 2](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/2.png "Screenshot 2")
![Screenshot 3](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/3.png "Screenshot 3")
With Solarized Color Scheme
![Screenshot 4](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/4.png "Screenshot 4")
![Screenshot 5](https://raw.githubusercontent.com/ImmanuelHaffner/vimrc/master/screenshots/5.png "Screenshot 5")
