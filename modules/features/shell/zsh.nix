{ ... }: {
  flake.modules.homeManager.zsh = { ... }: {
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      initContent = ''
        bindkey -e
        eval "$(zoxide init zsh)"
        PROMPT='%F{green}%n@%m%f:%F{blue}%~%f
> '
        RPROMPT='%F{yellow}%*%f'
      '';
    };
  };
}
