_: {
  programs.nixvim = {
    plugins = {
      treesitter = {
        enable = true;
        settings = {
          highlight = {
            enable = true;
          };

          indent = {
            enable = true;
          };

          autopairs = {
            enable = true;
          };

          folding = {
            enable = false;
          };

          ensure_installed = [
            "bash"
            "html"
            "css"
            "javascript"
            "jsdoc"
            "json"
            "lua"
            "luadoc"
            "luap"
            "nix"
            "markdown"
            "markdown_inline"
            "query"
            "regex"
            "tsx"
            "typescript"
            "vim"
            "vimdoc"
            "toml"
            "yaml"
          ];

          auto_install = true;
          incremental_selection = {
            enable = true;
            keymaps = {
              init_selection = "<C-space>";
              node_incremental = "<C-space>";
              scope_incremental = false;
              node_decremental = "<bs>";
            };
          };
        };
        nixvimInjections = true;
      };

      treesitter-textobjects = {
        enable = true;
        select = {
          enable = true;
          lookahead = true;
        };
      };

      ts-autotag = {
        enable = true;
      };

      treesitter-context = {
        enable = true;
      };

      ts-context-commentstring = {
        enable = true;
        disableAutoInitialization = false;
      };
    };
  };
}
