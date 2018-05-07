[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/ntrrg/docker-hugo/raw/master/LICENSE)
![Docker Build Status](https://img.shields.io/docker/build/ntrrg/hugo.svg)

## Usage

```sh
docker run \
  --name my_site \
  -it \
  -p 1313:1313
  -v /path/to/my/site:/site
ntrrg/hugo
```

All the commands from the Hugo CLI are available, use `docker run --rm ntrrg/hugo help` or see the [official documentation](https://gohugo.io/commands/).

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

