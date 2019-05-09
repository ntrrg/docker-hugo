FROM alpine:3.9
ENV HUGO_VERSION="0.55.5"
WORKDIR /tmp/hugo
RUN \
  wget https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar -xf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv hugo /usr/bin/ && \
  cd / && \
  rm -rf /tmp/hugo
EXPOSE 1313
WORKDIR /site
USER 1000
VOLUME /site
ENTRYPOINT ["/usr/bin/hugo"]

