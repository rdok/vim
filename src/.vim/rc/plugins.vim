" Start Vundle
" Runtime path: include and initialize Vundle.
set rtp+=~/.vim/bundle/Vundle.vim 

call vundle#begin()
    " Let Vundle manage Vundle, required.
    Plugin 'gmarik/Vundle.vim'  

    " Full path fuzzy file, buffer, mru, tag...
    Plugin 'ctrlpvim/ctrlp.vim'  

    Plugin 'joshdick/onedark.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'vim-scripts/vim-auto-save'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'sheerun/vim-polyglot'

    Plugin 'iamcco/markdown-preview.nvim'
    
call vundle#end() " Plugins must be added before the following line.

" Plug plugin manager
if !filereadable(expand("~/.vim/autoload/plug.vim"))
    :! curl -fLo ${HOME}/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
