{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [ nix-zsh-completions ];

  programs = {
    zsh = {
      enable = true;
      defaultKeymap = "viins";
      dotDir = ".config/zsh";
      enableVteIntegration = true;
      autocd = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      history = {
        append = true;
        expireDuplicatesFirst = true;
        path = "$HOME/.cache/zsh/.history";
      };

      initContent = ''
          bindkey '^ ' autosuggest-accept
        	bindkey '^[j' fzf-tab-complete
        	bindkey '^[k' fzf-tab-complete

        	[ -f "$HOME/.temp.zsh" ] && source "$HOMOE/.temp.zsh"
      '';

      plugins = [
        {
          name = "vi-mode";
          src = pkgs.zsh-vi-mode;
          file = "share/zsh-vi-mode/zsh-vi-mode.plugin.zsh";
        }
        {
          name = "zsh-fzf-tab";
          src = pkgs.zsh-fzf-tab;
          file = "share/fzf-tab/fzf-tab.plugin.zsh";
        }
      ];
    };

    zoxide = {
      enable = true;
      options = [ "--cmd cd" ];
    };
  };
}
