_: {
  programs.nixvim = {
    plugins.conform-nvim = {
      enable = true;
      settings = {
        notify_on_error = true;
        format_on_save = ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end
            return { timeout_ms = 500, lsp_format = 'fallback' }
          end
        '';

        formatters_by_ft = {
          html = {
            formatters = [
              "prettierd"
              "prettier"
            ];
            stop_after_first = true;
          };
          css = {
            formatters = [
              "prettierd"
              "prettier"
            ];
            stop_after_first = true;
          };
          javascript = {
            formatters = [
              "prettierd"
              "prettier"
            ];
            stop_after_first = true;
          };
          javascriptreact = {
            formatters = [
              "prettierd"
              "prettier"
            ];
            stop_after_first = true;
          };
          typescript = {
            formatters = [
              "prettierd"
              "prettier"
            ];
            stop_after_first = true;
          };
          typescriptreact = {
            formatters = [
              "prettierd"
              "prettier"
            ];
            stop_after_first = true;
          };
          lua = [ "stylua" ];
          nix = [ "nixfmt" ];
          markdown = {
            formatters = [
              "prettierd"
              "prettier"
            ];
            stop_after_first = true;
          };
        };
      };
    };

    keymaps = [
      {
        key = "<leader>fl";
        mode = "n";
        action = "<cmd>lua require('conform').format()<cr>";
        options.desc = "Format Lines";
      }
    ];
  };
}
