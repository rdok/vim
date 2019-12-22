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