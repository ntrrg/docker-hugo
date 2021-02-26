FROM golang:1.16-alpine3.13 AS build
ARG HUGO_VERSION="0.81.0"
RUN \
  apk add --no-cache gcc git g++ musl-dev && \
  wget -qO "/tmp/mage.tar.gz" "https://github.com/magefile/mage/releases/download/v1.10.0/mage_1.10.0_Linux-64bit.tar.gz" && \
  tar -xf "/tmp/mage.tar.gz" -C "/tmp/" && \
  cp "/tmp/mage" "/usr/bin/" && \
  rm "/tmp/mage.tar.gz"
WORKDIR /src
RUN \
  git clone --depth 1 -b "v$HUGO_VERSION" "https://github.com/gohugoio/hugo.git" . && \
  HUGO_BUILD_TAGS="extended" mage install

FROM alpine:3.13
RUN \
  apk add --no-cache ca-certificates libc6-compat libstdc++ git && \
  (update-ca-certificates || true)
COPY --from=build /go/bin/hugo /usr/bin/hugo
EXPOSE 1313
WORKDIR /site
VOLUME /tmp
VOLUME /site
ENTRYPOINT ["/usr/bin/hugo"]

