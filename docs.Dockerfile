FROM alpine:3.13 as hugo
ARG HUGO_VERSION="0.81.0"
RUN \
  apk add --no-cache ca-certificates git && \
  (update-ca-certificates || true) && \
  wget -O "/tmp/hugo.tar.gz" "https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" && \
  tar -xf "/tmp/hugo.tar.gz" --exclude "README.md" --exclude "LICENSE" -C "/usr/bin/" && \
  rm "/tmp/hugo.tar.gz"
WORKDIR /tmp/hugoDocs
RUN \
  git clone --depth 1 -b "v$HUGO_VERSION" "https://github.com/gohugoio/hugoDocs.git" . && \
  hugo --baseUrl / -d /public

FROM ntrrg/nginx:http
COPY --from=hugo /public /usr/share/nginx/html

