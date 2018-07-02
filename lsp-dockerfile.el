;;; lsp-dockerfile.el --- Dockerfile support for lsp-mode  -*- lexical-binding: t; -*-

;; Copyright (C) 2018 Vibhav Pant <vibhavp@gmail.com>

;; Author: Vibhav Pant <vibhavp@gmail.com>
;; Version: 1.0
;; Package-Requires: ((emacs "25") (lsp-mode "4.2") (dockerfile-mode "1.2"))
;; Keywords: languages, docker, lsp
;; URL: https://github.com/emacs-lsp/lsp-dockerfile

;;; Commentary:

;; Dockerfile support for lsp-mode using the Dockerfile Language Server.
;; Enable using (add-hook 'dockerfile-mode-hook #'lsp-dockerfile-enable)

;;; Code:

(require 'lsp-mode)
(require 'dockerfile-mode)

(lsp-define-stdio-client lsp-dockerfile "Docker"
			 (lambda () default-directory)
			 '("docker-langserver" "--stdio"))

(provide 'lsp-dockerfile)
;;; lsp-dockerfile.el ends here
