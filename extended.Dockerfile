FROM golang:1.15-alpine3.12 AS build
ARG HUGO_VERSION="0.76.3"
RUN apk update && apk upgrade && apk add gcc git g++ musl-dev
RUN \
  wget -qO "/tmp/mage.tar.gz" "https://github.com/magefile/mage/releases/download/v1.10.0/mage_1.10.0_Linux-64bit.tar.gz" && \
  tar -xf "/tmp/mage.tar.gz" -C "/tmp/" && \
  cp "/tmp/mage" "/usr/bin/" && \
  rm "/tmp/mage.tar.gz"
WORKDIR /src
RUN \
  git clone --depth 1 -b "v$HUGO_VERSION" "https://github.com/gohugoio/hugo.git" . && \
  HUGO_BUILD_TAGS="extended"; mage hugo && mage install

FROM alpine:3.12
RUN \
  apk update && apk upgrade && apk add ca-certificates libc6-compat libstdc++ git && \
  (update-ca-certificates || true)
COPY --from=build /go/bin/hugo /usr/bin/hugo
EXPOSE 1313
WORKDIR /site
VOLUME /tmp
VOLUME /site
ENTRYPOINT ["/usr/bin/hugo"]

