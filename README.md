# FANUC TP Syntax Highlighting for VIM

## Install

Copy tp.vim to your `~/vim/syntax/` directory.

Add this to your ~/.vimrc:

    syntax on
    filetype on
    au BufNewFile,BufRead *.ls set filetype=tp
