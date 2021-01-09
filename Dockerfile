FROM alpine

RUN wget https://github.com/cli/cli/releases/download/v1.4.0/gh_1.4.0_linux_amd64.tar.gz && \
  tar xzvf gh_1.4.0_linux_amd64.tar.gz gh_1.4.0_linux_amd64/bin/gh --strip-components=2 -C "/bin" && \
  rm gh_1.4.0_linux_amd64.tar.gz

ENTRYPOINT ["/bin/gh"]
