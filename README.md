[![Docker Build Status](https://img.shields.io/docker/build/ntrrg/md-linter.svg)](https://hub.docker.com/r/ntrrg/md-linter/)

* `latest` [Dockerfile](latest/Dockerfile) [![](https://images.microbadger.com/badges/image/ntrrg/md-linter.svg)](https://microbadger.com/images/ntrrg/md-linter "Get your own image badge on microbadger.com")

* `watch` [Dockerfile](watch/Dockerfile) [![](https://images.microbadger.com/badges/image/ntrrg/md-linter:watch.svg)](https://microbadger.com/images/ntrrg/md-linter:watch "Get your own image badge on microbadger.com")

## Usage

```sh
docker run --rm -itv /path/to/my/md-files:/files ntrrg/md-linter
```

For any custom configurations, just create a configuration file (`.remarkrc` or
`.remarkignore`) in the root folder of the markdown files (see <https://github.com/unifiedjs/unified-engine/blob/master/doc/configure.md>).

The `watch` tag provides an implementation with a file system watcher, so any
time that some Markdown file is edited, it will automatically restart the
linter. Just like the linter, the file system watcher supports custom
configurations with a file (`nodemon.json`) in the root folder (see <https://github.com/remy/nodemon#config-files>).

## Acknowledgment

Working on this project I use/used:

* [Debian](https://www.debian.org/)

* [XFCE](https://xfce.org/)

* [Zsh](http://www.zsh.org/)

* [st](https://st.suckless.org/)

* [Git](https://git-scm.com/)

* [EditorConfig](http://editorconfig.org/)

* [Vim](https://www.vim.org/)

* [Chrome](https://www.google.com/chrome/browser/desktop/index.html)

* [Docker](https://docker.com)

* [Gogs](https://gogs.io/)

* [Github](https://github.com)

* [Node.js](https://nodejs.org/en/)

* [npm](https://www.npmjs.com/)

* [remark](https://remark.js.org/)

* [Nodemon](https://nodemon.io/)

