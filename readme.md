# vim

### Learning Chords

| KeyStrokes                    | Info                                      | Usage                                             |
| -------------------------     |:-----------------------------------------:|---------------------------------------------------|
| `{register}y{motion}`         | Yank motion to register.                  | `"+yiw` Yank current word to system clipboard     |
| `{visual}{register}y`         | Visual: yank selected chars to a register | `V"+y` Yank selected line(s) to system clipboard. |
| `{register}yy`                | Yank current line to a register           | `"+yy` Yank current line to system clipboard      |
| `:{range}y{register}`         | Yank range to register.                   | `:%y+` Yank entire file to system clipboard.      |
| `:{mode}unmap {key}`          | Unset, or remove a mapping.               |


### Development
```
ln -s $(pwd)/src/.vim/ ${HOME}/.vim
ln -s $(pwd)/src/.vimrc ${HOME}/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
