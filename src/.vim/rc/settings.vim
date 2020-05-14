" Behave more Vi-compatible, or a more useful way.
set nocompatible              

" Read each time a shell command is run.
let $BASH_ENV = "~/.bash_aliases"   

" Use an undo file.
set undofile

"Disable bell.
set noerrorbells visualbell t_vb=   

" Use comma as Leader
let mapleader = ' '                 

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" vim-scripts/vim-auto-save
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
"
"
" set omnifunc=syntaxcomplete#Complete
