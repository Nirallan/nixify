_: {
  programs.nixvim = {
    plugins.tmux-navigator = {
      enable = true;
    };

    keymaps = [
      {
        key = "<leader>sv";
        mode = "n";
        action = "<C-w>v";
        options.desc = "Splits a Window Vertically";
      }
      {
        key = "<leader>sh";
        mode = "n";
        action = "<C-w>s";
        options.desc = "Splits a Window Horizontally";
      }
      {
        key = "<leader>se";
        mode = "n";
        action = "<C-w>=";
        options.desc = "Makes Split Windows Equal In Size";
      }
      {
        key = "<leader>sx";
        mode = "n";
        action = "<cmd>close<cr>";
        options.desc = "Closes The Current Split";
      }
      {
        key = "<leader>to";
        mode = "n";
        action = "<cmd>tabnew<cr>";
        options.desc = "Opens a New Tab";
      }
      {
        key = "<leader>tx";
        mode = "n";
        action = "<cmd>tabclose<cr>";
        options.desc = "Closes The Current Tab";
      }
      {
        key = "<leader>tn";
        mode = "n";
        action = "<cmd>tabnext<cr>";
        options.desc = "Goes To The Next Tab";
      }
      {
        key = "<leader>tp";
        mode = "n";
        action = "<cmd>tabprevious<cr>";
        options.desc = "Goes To The Previous Tab";
      }
      {
        key = "<leader>tb";
        mode = "n";
        action = "<cmd>tabnew %<cr>";
        options.desc = "Opens The Current Buffer In a New Tab";
      }
    ];
  };
}
