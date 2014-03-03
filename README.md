# VIM-FANUC-TP

This vim bundle adds syntax highlighting for FANUC's TP programming language.

## Installing and Using

- Install [pathogen](http://www.vim.org/scripts/script.php?script_id=2332) into `~/.vim/autoload/` and add the
   following line to your `~/.vimrc`:

        call pathogen#infect()

- Make a clone of the `vim-tp` repository:

        $ mkdir -p ~/.vim/bundle
        $ cd ~/.vim/bundle
        $ git clone https://github.com/onerobotics/vim-tp

- OR use [vundle](https://github.com/gmarik/vundle), adding this line to your `~/.vimrc`:

        Bundle 'onerobotics/vim-tp'

- OR use git submodules:

        $ git submodule add https://github.com/onerobotics/vim-tp.git bundle/vim-tp
        $ git submodule init

## License ##

MIT
