# vim

### Learning Chords

| KeyStrokes                | Info                                      |
| ------------------------- |:-----------------------------------------:|
| [`+yy`]                   | Yank current link to system clipboard     |
| [`<Shift-v>{motion}"+y`]  | Copy selected lines to system clipboard.  |
| [`:{mode}unmap {key}`]    | Unset, or remove a mapping.               |


[`+yy`]: https://stackoverflow.com/a/11489440/2790481
[`<Shift-v>{motion}"+y`]: https://stackoverflow.com/a/9166363/2790481
[`:{mode}unmap {key}`]: https://stackoverflow.com/a/9166363/2790481

### Development
```
ln -s $(pwd)/src/.vim/ ${HOME}/.vim
ln -s $(pwd)/src/.vimrc ${HOME}/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
