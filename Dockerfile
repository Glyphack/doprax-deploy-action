FROM golang:1.16.5

ENV GO111MODULE=on

RUN go get github.com/glyphack/doprax-cli@v0.1.4

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
