FROM golang:latest
COPY ./ $GOPATH/src/peach
WORKDIR $GOPATH/src/peach
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && go get \
    && go build
RUN cp ./run.sh /run.sh \
    && chmod 777 /run.sh
ENV APP peach
ENV GIT https://github.com/peachdocs/peach.peach
EXPOSE 5556
CMD ["/run.sh"]
