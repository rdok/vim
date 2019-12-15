FROM alpine:3.9

LABEL maintainer="Rizart Dokollari"

RUN apk add --no-cache vim

CMD ["vim"]
