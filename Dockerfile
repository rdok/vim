FROM alpine:3.9

LABEL maintainer="Rizart Dokollari"

RUN apk update && \
    apk add --no-cache \
      vim \
      ctags \
      git

WORKDIR /root
COPY src .

RUN git clone \
      https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim \
   && vim +PluginInstall +qal

CMD ["vim"]
