This is a Vim compiler plugin for validating HTML via [validator.nu](http://validator.nu "Validator.nu").

Preview
-------

Screenshot:

![vim-htmlvalidator](http://i.imgur.com/J0YCC.png "vim-htmlvalidator")

Requirements
------------

* Vim
* curl
* sed

Installation
----------------------

Place **html.vim** into **~/.vim/compiler** or clone this repository into the [Pathogen](https://github.com/tpope/vim-pathogen "Pathogen") **~/.vim/bundles** directory.

If you wish to always associate HTML with this compiler, add the following line to the **~/.vimrc** file.

`au FileType html compiler html`

If you wish to automatically open the **QuickFix** window, add the following line to the **~/.vimrc** file.

`au QuickFixCmdPost make cwindow`

Usage
----------------------

Type **:make**. If there are errors, then type **:cwindow** or **:clist** if you have not set up the **QuickFix** window to open automatically.

License
-------

GPLv2+

