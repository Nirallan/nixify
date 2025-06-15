_: {
  programs.nixvim = {
    plugins = {
      trouble = {
        enable = true;
        settings = {
          auto_close = true;
        };
      };
    };

    keymaps = [
      {
        key = "<leader>x";
        mode = "n";
        action = "+diagnostics/quickfix";
        options.desc = "Trouble Diagnostics (QuickFix)";
      }
      {
        key = "<leader>xx";
        mode = "n";
        action = "<cmd>Trouble diagnostics toggle<cr>";
        options.desc = "Trouble Diagnostics";
      }
      {
        key = "<leader>xX";
        mode = "n";
        action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
        options.desc = "Trouble Diagnostics (Buffer)";
      }
      {
        key = "<leader>xt";
        mode = "n";
        action = "<cmd>Trouble todo<cr>";
        options.desc = "Trouble Diagnostics (Todo)";
      }
      {
        key = "<leader>xQ";
        mode = "n";
        action = "<cmd>Trouble qflist toggle<cr>";
        options.desc = "Trouble Diagnostics (QuickFix List)";
      }
    ];
  };
}
