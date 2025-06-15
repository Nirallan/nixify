_: {
  programs.nixvim = {
    plugins = {
      barbecue = {
        enable = true;
        settings = {
          create_autocmd = false;
          theme = "auto";
        };
      };
    };

    extraConfigLua = ''
      vim.api.nvim_create_autocmd({
        "WinScrolled",
        "BufWinEnter",
        "CursorHold",
        "InsertLeave",

        "BufModifiedSet",
      }, {
        group = vim.api.nvim_create_augroup("barbecue.updater", {}),
        callback = function()
          require("barbecue.ui").update()
        end,
      })
    '';
  };
}
