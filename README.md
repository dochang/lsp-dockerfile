lsp-dockerfile
==============

Dockerfile support for lsp-mode using [Dockerfile Language Server](https://github.com/rcjsuen/dockerfile-language-server-nodejs)

## Installation

### From source

Clone this repository and [lsp-mode](https://github.com/emacs-lsp/lsp-mode) to
suitable paths, and add them to your load path:

```emacs-lisp
(add-to-list 'load-path "<path to lsp-mode>")
(add-to-list 'load-path "<path to lsp-dockerfile>")
```

### From MELPA

Install one of the available packages:
- `lsp-dockerfile`

## Usage
### Enabling `lsp-dockerfile`

```emacs-lisp
(require 'lsp-dockerfile)
(add-hook 'dockerfile-mode-hook #'lsp-dockerfile-enable)
```

You also need
[dockerfile-language-server-nodejs](https://github.com/rcjsuen/dockerfile-language-server-nodejs)
installed and on your PATH.

```bash
npm i -g dockerfile-language-server-nodejs
```

(`sudo` may be necessary depending on how you have
[npm](https://www.npmjs.com/) setup)
