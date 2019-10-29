FROM alpine:3.10
ARG HUGO_VERSION="0.59.0"
RUN \
  apk update && apk upgrade && apk add ca-certificates && \
  (update-ca-certificates || true)
RUN \
  cd /tmp && \
  wget https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar -C /usr/bin/ -xf "hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" --exclude "README.md" --exclude "LICENSE" && \
  rm "hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"
EXPOSE 1313
WORKDIR /site
VOLUME /site
ENTRYPOINT ["/usr/bin/hugo"]

