FROM msmiley/cloud9

#############################
# Go
ENV GO_VERSION 1.8
ADD go$GO_VERSION.linux-amd64.tar.gz /usr/local
RUN mkdir -p /go/bin /go/pkg /go/src
ENV GOPATH /go
RUN echo "export PATH=\"/usr/local/go/bin:/go/bin:$PATH\"" >> /root/.bashrc

# start cloud9 with no authentication by default
# if authentication is desired, set the value of -a, i.e. -a user:pass at the end of the docker run line
ENTRYPOINT ["/root/.c9/node/bin/node", "c9sdk/server.js", "-w", "/go", "--listen", "0.0.0.0", "-p", "8080"]
CMD ["-a", ":"]