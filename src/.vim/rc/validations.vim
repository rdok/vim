if has('clipboard') == 0
    echo '================================================================================'
    echo 'WARNING: Vim is not compiled with the `+clipboard` feature.'
    echo '================================================================================'
    echo "You won't be able to copy/paste to system clipboard."
    echo 'Install vim-gtk or vim-gtk3'
endif
