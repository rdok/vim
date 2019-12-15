"|-----------------------------------------------------------------------------|
"|          Plugins - Vundle                                                   |
"|-----------------------------------------------------------------------------|


" Behave more Vi-compatible, or a more useful way.
set nocompatible              

" Don't detect filetypes.
filetype off                  

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
" End Vundlskwp/greplace.vime

filetype on

" Required: Enable filetype: detection, specific scripts, and indent scripts.
filetype plugin indent on    
"
" Enable omni completion - https://vim.fandom.com/wiki/Omni_completion
filetype plugin on                  
set omnifunc=syntaxcomplete#Complete
                             
"|-----------------------------------------------------------------------------|
"|         End Plugins - Vundle                                                |
"|-----------------------------------------------------------------------------|





"|-----------------------------------------------------------------------------|
"|          Vim Settings                                                       |
"|-----------------------------------------------------------------------------|

" Read each time a shell command is run.
let $BASH_ENV = "~/.bash_aliases"   

" Use an undo file.
set undofile

"Disable bell.
set noerrorbells visualbell t_vb=   

" Use comma as Leader
let mapleader = ','                 

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" vim-scripts/vim-auto-save
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

"|-----------------------------------------------------------------------------|
"|           Vim Settings                                                      |
"|-----------------------------------------------------------------------------|





"|-----------------------------------------------------------------------------|
"|         Plugins Settings                                                    |
"|-----------------------------------------------------------------------------|

"
" NERDTree
"

" Show hidden files. E.g. .gitignore
let NERDTreeShowHidden = 1

" Prevent NERDTree from hijacking directory browsing from Netrw
let NERDTreeHijackNetrw = 0

"|-----------------------------------------------------------------------------|
"|          End Plugin Settings                                                |
"|-----------------------------------------------------------------------------|










"|----------------------------------------------------------------------------|
"|          Styling                                                           |
"|----------------------------------------------------------------------------|

" Switch on syntax highlighting.
syntax on                       

" light/dark
set background=light             

" Dark:  onedark, solarized
" Light: summerfruit256, solarized, pyte, PaperColor, pencil
" colo ondedark             " Use color scheme.

" Display line numbers
set number
" set relativenumber

" Remove split borders
hi vertsplit guifg=bg guibg=bg

" Show (partial) command in the last line of the screen. 
set showcmd 

" Always display the status line.
set laststatus=2

" Necessary to show Unicode glyphs
set encoding=utf-8 

" Highlight the background in red for text that goes over the 81 column limit.
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.\+/
set colorcolumn=81
autocmd FileType html,markdown,json highlight OverLength ctermbg=NONE 
    \ ctermfg=NONE
autocmd FileType html,markdown,json set colorcolumn=

"|-----------------------------------------------------------------------------|
"|          End Styling                                                        |
"|-----------------------------------------------------------------------------|





"|----------------------------------------------------------------------------|
"|          Formatting                                                        |
"|----------------------------------------------------------------------------|

" Insert 3 spaces for a tab.
set tabstop=3                   

" Insert 3 spaces for an indentation.
set shiftwidth=3                

" Insert spaces whenever the tab key is pressed.
set expandtab

" Tab 3 spaces
set softtabstop=3

"|----------------------------------------------------------------------------|
"|           End Formatting                                                   |
"|----------------------------------------------------------------------------|




"|----------------------------------------------------------------------------|
"|           Completion Menu                                                  |
"|----------------------------------------------------------------------------|
" https://vim.fandom.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>

inoremap <C-@> <C-x><C-o>
highlight Pmenu ctermbg=white ctermfg=brown gui=bold
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"|----------------------------------------------------------------------------|
"|           End Completion Menu                                              |
"|----------------------------------------------------------------------------|




"|----------------------------------------------------------------------------|
"|         Search                                                             |
"|----------------------------------------------------------------------------|

" Highlight search resulsts.
set hlsearch                    

" While typing a search command, show where the pattern is so far.
set is                          

"|----------------------------------------------------------------------------|
"|         End Search                                                         |
"|----------------------------------------------------------------------------|





"|----------------------------------------------------------------------------|
"|        Mappings                                                            |
"|----------------------------------------------------------------------------|
"
" Edit files
nmap <Leader>sv :so $MYVIMRC<cr>        " Source Vimrc file
nmap <Leader>q :q!<cr>
nmap <Leader>w :w<cr>
nmap <Leader>wq :wq<cr>
nmap <Leader>bd :bd<cr>                 " Close current buffer
nmap <Leader><SPACE> :nohl<cr>          " Stop the highlighting for the search 

" Tests
nmap <F9> :!clear && ./phpunit %<cr>

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


if has("win32")
    set backupdir=$HOME\\.vim\\temp\\
    set directory=$HOME\\.vim\\temp\\
    set undodir=$HOME\\.vim\\temp\\
else
    set backupdir=$HOME/.vim/temp/
    set directory=$HOME/.vim/temp/
    set undodir=$HOME/.vim/temp/
endif
