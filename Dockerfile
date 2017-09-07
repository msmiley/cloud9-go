FROM msmiley/cloud9

#############################
# Debian APT dependencies
RUN apt-get update; apt-get install -y gdb gdbserver

#############################
# Go
ENV GO_VERSION 1.8
ADD go$GO_VERSION.linux-amd64.tar.gz /usr/local
RUN mkdir -p /home/bin /home/pkg /home/src
ENV GOPATH /home
RUN echo "export PATH=\"/usr/local/go/bin:/home/bin:$PATH\"" >> /root/.bashrc

# start cloud9 with no authentication by default
# if authentication is desired, set the value of -a, i.e. -a user:pass at the end of the docker run line
ENTRYPOINT ["/root/.c9/node/bin/node", "c9sdk/server.js", "-w", "/home", "--listen", "0.0.0.0"]
CMD ["-a", ":"]