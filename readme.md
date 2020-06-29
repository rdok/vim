# vim

### Chords

| KeyStrokes                    | Info                                      | Usage                                             |
| -------------------------     |:-----------------------------------------:|---------------------------------------------------|
| `{register}y{motion}`         | Yank motion to register.                  | `"+yiw` Yank current word to system clipboard     |
| `{visual}{register}y`         | Visual: yank selected chars to a register | `V"+y` Yank selected line(s) to system clipboard. |
| `{register}yy`                | Yank current line to a register           | `"+yy` Yank current line to system clipboard      |
| `:{range}y{register}`         | Yank range to register.                   | `:%y+` Yank entire file to system clipboard.      |

#### Extra
| KeyStrokes                    | Info                                      | Usage                                             |
| -------------------------     |:-----------------------------------------:|---------------------------------------------------|
| `:{mode}unmap {key}`          | Unset, or remove a mapping.               |                                                   |
| `:%!jq .`                     | Format json                               | [Source](https://vi.stackexchange.com/a/19950/12339) | 

### Development
```
ln -s $(pwd)/src/.vim/ ${HOME}/.vim
ln -s $(pwd)/src/.vimrc ${HOME}/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
Ubuntu: Download a font, like [Ubuntu](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Ubuntu/Medium/complete/Ubuntu%20Medium%20Nerd%20Font%20Complete.ttf) to ~/.local/share/fonts 
