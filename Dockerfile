FROM alpine:3.10 as download
ARG HUGO_VERSION="0.58.3"
RUN \
  apk update && apk upgrade && apk add ca-certificates && \
  (update-ca-certificates || true)
RUN \
  wget https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar -xzf "hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"

FROM scratch
COPY --from=download /hugo /bin/hugo
USER 1000
WORKDIR /tmp
EXPOSE 1313
VOLUME /tmp
ENTRYPOINT ["/bin/hugo"]

