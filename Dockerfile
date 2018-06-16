FROM alpine:3.7
WORKDIR /tmp
RUN \
  wget https://github.com/gohugoio/hugo/releases/download/v0.42.1/hugo_0.42.1_Linux-64bit.tar.gz && \
  tar -xvf hugo_0.42.1_Linux-64bit.tar.gz && \
  mv hugo /usr/bin/ && \
  rm -rf hugo_0.42.1_Linux-64bit.tar.gz LICENSE README.md
WORKDIR /site
VOLUME /site
COPY entrypoint.sh /
ENV PORT=1313
ENTRYPOINT ["/entrypoint.sh"]

