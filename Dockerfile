FROM alpine:3.9

LABEL maintainer="Rizart Dokollari"

RUN apk update && \
    apk add --no-cache \
      vim \
      ctags \
      git

COPY .vimrc /vim/.vimrc

# Vundle
RUN git clone \
      https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
   && vim -u /vim/.vimrc +PluginInstall +qal \
   && apk del git

WORKDIR /app

CMD ["vim", "-u", "/vim/.vimrc"]
