{ ... }: {
  flake.modules.homeManager.zsh = { ... }: {
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      initContent = ''
        eval "$(zoxide init zsh)"
        PROMPT='%F{green}%n@%m%f:%F{blue}%~%f
> '
        RPROMPT='%F{yellow}%*%f'
      '';
    };
  };
}
