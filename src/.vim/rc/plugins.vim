" Plug
let plug_installed = 0
if !filereadable(expand("~/.vim/autoload/plug.vim"))
    :! curl -fLo ${HOME}/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let plug_installed = 1
endif

call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'vim-scripts/vim-auto-save'
    Plug 'ryanoasis/vim-devicons'
    Plug 'ctrlpvim/ctrlp.vim'  
    Plug 'joshdick/onedark.vim'
    Plug 'sheerun/vim-polyglot'

    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()

if plug_installed
    :PlugInstall
endif

