FROM busybox:latest

ADD node /bin/node
ADD node_modules /bin/node_modules
RUN ln /bin/node_modules/npm/bin/npm /bin/npm

CMD ["/bin/ash"]
