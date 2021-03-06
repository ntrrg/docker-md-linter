[![Docker Build Status](https://img.shields.io/docker/build/ntrrg/md-linter.svg)](https://store.docker.com/community/images/ntrrg/md-linter/)

| Tag | Status |
|-:|:-|
| `latest` ([Dockerfile](Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/md-linter.svg)](https://microbadger.com/images/ntrrg/md-linter) |
| `watch` ([Dockerfile](watch.Dockerfile)) | [![](https://images.microbadger.com/badges/image/ntrrg/md-linter:watch.svg)](https://microbadger.com/images/ntrrg/md-linter:watch) |

## Usage

```sh
docker run --rm -itv /path/to/my/md-files:/files ntrrg/md-linter
```

For any custom configuration, just create a file (`.remarkrc` or
`.remarkignore`) in the root folder of the markdown files (see <https://github.com/unifiedjs/unified-engine/blob/master/doc/configure.md>).

The file `.remarkplugis` allows the installation of plugins, useful for some
special cases, like frontmatter support. This must be a line separated list of
plugins.

`.remarkplugins`:

```text
remark-frontmatter
```

`.remarkrc`:

```json
{
  "plugins": [
    "remark-preset-lint-recommended",
    "remark-frontmatter",
    [
      "remark-lint-list-item-indent",
      "space"
    ]
  ]
}
```

The `watch` tag provides an implementation with a file system watcher, so any
time that some markdown file is edited, it will automatically restart the
linter. Just like the linter, the file system watcher supports custom
configurations with a file (`nodemon.json`) in the root folder (see <https://github.com/remy/nodemon#config-files>).

```sh
docker run --rm -itv /path/to/my/md-files:/files ntrrg/md-linter:watch
```

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

* [remark](https://remark.js.org/)

* [Nodemon](https://nodemon.io/)

