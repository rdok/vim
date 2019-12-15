FROM alpine:3.9

LABEL maintainer="Rizart Dokollari"

RUN apk add --no-cache vim \
      git

WORKDIR /vim
COPY ./.vimrc .vimrc

# Vundle
RUN git clone \
      https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
   && vim -u /vim/.vimrc +PluginInstall +qal \
   && apk del git


CMD ["vim", "-u", "/vim/.vimrc"]
