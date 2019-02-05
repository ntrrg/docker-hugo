[![Docker Build Status](https://img.shields.io/docker/build/ntrrg/hugo.svg)](https://cloud.docker.com/u/ntrrg/repository/docker/ntrrg/hugo)

| Tag | Status |
|-:|:-|
| `latest`, `0.54.0` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.54.0/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.54.0.svg)](https://microbadger.com/images/ntrrg/hugo:0.54.0) |
| `0.53` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.53/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.53.svg)](https://microbadger.com/images/ntrrg/hugo:0.53) |
| `0.52` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.52/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.52.svg)](https://microbadger.com/images/ntrrg/hugo:0.52) |
| `0.51` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.51/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.51.svg)](https://microbadger.com/images/ntrrg/hugo:0.51) |
| `0.50` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.50/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.50.svg)](https://microbadger.com/images/ntrrg/hugo:0.50) |
| `0.49.2` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.49.2/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.49.2.svg)](https://microbadger.com/images/ntrrg/hugo:0.49.2) |
| `0.49` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.49/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.49.svg)](https://microbadger.com/images/ntrrg/hugo:0.49) |
| `0.48` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.48/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.48.svg)](https://microbadger.com/images/ntrrg/hugo:0.48) |
| `0.47.1` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.47.1/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.47.1.svg)](https://microbadger.com/images/ntrrg/hugo:0.47.1) |
| `0.46` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.46/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.46.svg)](https://microbadger.com/images/ntrrg/hugo:0.46) |
| `0.42.1.1` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.42.1.1/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.42.1.1.svg)](https://microbadger.com/images/ntrrg/hugo:0.42.1.1) |
| `0.42.1` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.42.1/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.42.1.svg)](https://microbadger.com/images/ntrrg/hugo:0.42.1) |
| `0.41` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.41/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.41.svg)](https://microbadger.com/images/ntrrg/hugo:0.41) |
| `0.40.3` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.40.3/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.40.3.svg)](https://microbadger.com/images/ntrrg/hugo:0.40.3) |
| `0.40.2` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.40.2/Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.40.2.svg)](https://microbadger.com/images/ntrrg/hugo:0.40.2) |

## Usage

Any command from the Hugo CLI might be used, for extra information use `docker run --rm ntrrg/hugo help`
or see the [official documentation](https://gohugo.io/commands/).

```shell-session
$ docker run --rm -v /path/to/my/site:/site ntrrg/hugo
```

Some extra options are needed to run the Hugo server.

```shell-session
$ docker run --rm -itp 1313:1313 -v /path/to/my/site:/site ntrrg/hugo \
    server -DEF --bind=0.0.0.0 --baseUrl=/ --appendPort=false
```

If a custom port is needed, the Hugo server should run in the same port:

```shell-session
$ export PORT=8080
$ docker run --rm -itp $PORT:$PORT -v /path/to/my/site:/site ntrrg/hugo \
    server -DEF --bind=0.0.0.0 --port=$PORT --baseUrl=/ --appendPort=false
```

## Acknowledgment

Working on this project I use/used:

* [Debian](https://www.debian.org/)

* [XFCE](https://xfce.org/)

* [Vim](https://www.vim.org/)

* [Chrome](https://www.google.com/chrome/browser/desktop/index.html)

* [st](https://st.suckless.org/)

* [Zsh](http://www.zsh.org/)

* [GNU Screen](https://www.gnu.org/software/screen)

* [Git](https://git-scm.com/)

* [EditorConfig](http://editorconfig.org/)

* [Docker](https://docker.com)

* [Github](https://github.com)

* [Hugo](https://gohugo.io)

*Websocket for LiveReload using wrong port if Hugo binds to port 80.* <https://github.com/gohugoio/hugo/issues/2205>

