FROM alpine:3.13
ARG HUGO_VERSION="0.85.0"
RUN \
  apk add --no-cache ca-certificates git && \
  (update-ca-certificates || true) && \
  wget -O "/tmp/hugo.tar.gz" "https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" && \
  tar -xf "/tmp/hugo.tar.gz" --exclude "README.md" --exclude "LICENSE" -C "/usr/bin/" && \
  rm "/tmp/hugo.tar.gz"
EXPOSE 1313
WORKDIR /site
VOLUME /tmp
VOLUME /site
ENTRYPOINT ["/usr/bin/hugo"]

