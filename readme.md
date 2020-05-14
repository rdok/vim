# vim

### Learning Chords

| KeyStrokes                | Info                                      |
| ------------------------- |:-----------------------------------------:|
| [`{selected-chars}"+y`]   | Yank selected lines to system clipboard.  |
| [`"+yy`]                  | Yank current line to system clipboard     |
| [`:%+y`]                  | Yank entire file to system clipboard.     |
| [`:{mode}unmap {key}`]    | Unset, or remove a mapping.               |


[`"+yy`]: https://stackoverflow.com/a/11489440/2790481
[`{selected-chars}"+y`]: https://stackoverflow.com/a/9166363/2790481
[`:%+y`]: https://vi.stackexchange.com/a/96/12339

### Development
```
ln -s $(pwd)/src/.vim/ ${HOME}/.vim
ln -s $(pwd)/src/.vimrc ${HOME}/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
