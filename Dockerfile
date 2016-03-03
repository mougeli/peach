FROM golang:latest
COPY ./ $GOPATH/src/peach
WORKDIR $GOPATH/src/peach
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && go get \
    && go build
    
RUN ./peach new --target=/app.peach



EXPOSE 4000
CMD ["./peach"]
