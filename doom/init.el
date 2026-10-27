(doom!
 :completion
 (company +childframe)
 (vertico +icons)

 :ui
 doom
 dashboard
 (line-numbers +relative)
 modeline
 ophints
 (popup +defaults)
 vc-gutter
 vi-tilde-fringe
 workspaces

 :editor
 (evil +everywhere)
 file-templates
 fold
 snippets

 :emacs
 dired
 electric
 ibuffer
 undo
 vc

 :term
 vterm

 :checkers
 syntax

 :tools
 (lsp +eglot)
 magit
 pdf

 :lang
 emacs-lisp
 json
 lua
 (nix +lsp +eglot)
 org
 sh
 (yaml +lsp)

 :config
 (default +bindings +smartparens))
