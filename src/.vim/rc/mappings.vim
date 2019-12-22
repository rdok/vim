" Edit files
nmap <Leader>sv :so $MYVIMRC<cr>        " Source Vimrc file
nmap <Leader>q :q!<cr>
nmap <Leader>w :w<cr>
nmap <Leader>wq :wq<cr>
nmap <Leader>bd :bd<cr>                 " Close current buffer
nmap <Leader><SPACE> :nohl<cr>          " Stop the highlighting for the search 

" Tests
nmap <F9> :!clear && ./phpunit %<cr>
nnoremap <f5> :!ctags -R --exclude=.git --exclude=node_modules<CR>

" NERDTree: Toggle Sidebar
nmap <Leader>1 :NERDTreeToggle<cr>

" Switch between splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" Store swap files and backup files to a proper location
if !isdirectory($HOME . '/.vim/temp')
    call mkdir($HOME . '/.vim/temp')
endif

set backupdir=$HOME/.vim/temp/
set directory=$HOME/.vim/temp/
set undodir=$HOME/.vim/temp/
