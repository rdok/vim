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
    
call vundle#end() " Plugins must be added before the following line.
