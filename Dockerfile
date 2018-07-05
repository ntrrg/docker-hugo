FROM alpine:3.7
WORKDIR /tmp
ENV HUGO_VERSION="0.42.1"
RUN \
  wget https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar -xf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv hugo /usr/bin/ && \
  rm -rf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz LICENSE README.md
COPY entrypoint.sh /bin/
ENV PORT=1313
WORKDIR /site
VOLUME /site
ENTRYPOINT ["/bin/entrypoint.sh"]

