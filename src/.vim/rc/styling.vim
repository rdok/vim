" Switch on syntax highlighting.
syntax on                       

set background=dark
" colo seoul256-light
colo seoul256

" Relative numbers require less keystrokes than absolute ones
set relativenumber

" Remove split borders
hi vertsplit guifg=bg guibg=bg

" Show (partial) command in the last line of the screen. 
set showcmd 

" Always display the status line.
set laststatus=2

" Necessary to show Unicode glyphs
set encoding=utf-8 

" Highlight the background in red for text that goes over the 81 column limit.
set colorcolumn=81
autocmd FileType html,markdown,json highlight OverLength ctermbg=NONE 
    \ ctermfg=NONE
autocmd FileType html,markdown,json set colorcolumn=
