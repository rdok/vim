" https://vim.fandom.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
" set completeopt=longest,menuone
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
 " \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>

" inoremap <C-@> <C-x><C-o>
" highlight Pmenu ctermbg=white ctermfg=brown gui=bold
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
