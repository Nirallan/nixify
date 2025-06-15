_: {
  programs.nixvim = {
    plugins = {
      telescope = {
        enable = true;
        extensions = {
          fzf-native = {
            enable = true;
            settings = {
              fuzzy = true;
              override_generic_sorter = true;
              override_file_sorter = true;
              case_mode = "smart_case";
            };
          };

          ui-select = {
            enable = true;
            settings = {
              specific_opts = {
                codeactions = true;
              };
            };
          };
        };

        settings = {
          defaults = {
            i = {
              "<esc>" = {
                __raw = ''
                  function(...)
                    return require("telescope.actions").close(...)
                  end'';
              };
            };
          };

          pickers = {
            colorscheme = {
              enable_preview = true;
            };
          };
        };
      };
    };

    keymaps = [
      {
        key = "<leader>ff";
        mode = "n";
        action = "<cmd>Telescope find_files<cr>";
        options.desc = "Find Project Files";
      }
      {
        key = "<leader>fr";
        mode = "n";
        action = "<cmd>Telescope oldfiles<cr>";
        options.desc = "Find Recent Files";
      }
      {
        key = "<leader>fs";
        mode = "n";
        action = "<cmd>Telescope live_grep<cr>";
        options.desc = "Find String In Project Files";
      }
      {
        key = "<leader>fc";
        mode = "n";
        action = "<cmd>Telescope grep_string<cr>";
        options.desc = "Find String Under Cursor In Project Files";
      }
    ];
  };
}
