[![Docker Build Status](https://img.shields.io/docker/build/ntrrg/hugo.svg)](https://store.docker.com/community/images/ntrrg/hugo/)

* `latest`, `0.42.1.1` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.42.1.1/Dockerfile)) [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.42.1.1.svg)](https://microbadger.com/images/ntrrg/md-linter:0.42.1.1 "Get your own image badge on microbadger.com")

* `0.42.1.1-onbuild` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.42.1.1/onbuild.Dockerfile)) [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.42.1.1-onbuild.svg)](https://microbadger.com/images/ntrrg/md-linter:0.42.1.1-onbuild "Get your own image badge on microbadger.com")

* `0.42.1` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.42.1/Dockerfile)) [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.42.1.svg)](https://microbadger.com/images/ntrrg/md-linter:0.42.1 "Get your own image badge on microbadger.com")

* `0.41` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.41/Dockerfile)) [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.41.svg)](https://microbadger.com/images/ntrrg/md-linter:0.41 "Get your own image badge on microbadger.com")

* `0.40.3` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.40.3/Dockerfile)) [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.40.3.svg)](https://microbadger.com/images/ntrrg/md-linter:0.40.3 "Get your own image badge on microbadger.com")

* `0.40.2` ([Dockerfile](https://github.com/ntrrg/docker-hugo/blob/0.40.2/Dockerfile)) [![](https://images.microbadger.com/badges/image/ntrrg/hugo:0.40.2.svg)](https://microbadger.com/images/ntrrg/md-linter:0.40.2 "Get your own image badge on microbadger.com")

## Usage

All the commands from the Hugo CLI are available, for extra information use
`docker run --rm ntrrg/hugo help` or see the [official documentation](https://gohugo.io/commands/).

```shell-session
docker run --rm -it -p 1313:1313 -v /path/to/my/site:/site ntrrg/hugo
```

If a custom port is needed run:

```shell-session
PORT=8080; docker run \
  --rm -it \
  -e PORT=$PORT \
  -p $PORT:$PORT \
  -v /path/to/my/site:/site \
ntrrg/hugo
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

