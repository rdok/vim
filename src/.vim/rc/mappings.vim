" Edit files
nnoremap <Leader>sv :so $MYVIMRC<cr>        " Source Vimrc file
nnoremap <Leader>q :q!<cr>
nnoremap <Leader>w :w<cr>
nnoremap <Leader>wq :wq<cr>
nnoremap <Leader>bd :bd<cr>                 " Close current buffer
nnoremap <Leader><SPACE> :nohl<cr>          " Stop the highlighting for the search 

" Tests
nnoremap <F9> :!clear && ./phpunit %<cr>
nnoremap <F10> :!clear && python %<cr>
nnoremap <f5> :!ctags -R --exclude=.git --exclude=node_modules<CR>

" NERDTree: Toggle Sidebar
nnoremap <Leader>1 :NERDTreeToggle<cr>

" Switch between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Store swap files and backup files to a proper location
if !isdirectory($HOME . '/.vim/temp')
    call mkdir($HOME . '/.vim/temp')
endif

set backupdir=$HOME/.vim/temp/
set directory=$HOME/.vim/temp/
set undodir=$HOME/.vim/temp/


" JamshedVesuna/vim-markdown-preview
noremap <leader>m <Plug>MarkdownPreview
