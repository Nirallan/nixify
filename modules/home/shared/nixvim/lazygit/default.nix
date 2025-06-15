_: {
  programs.nixvim = {
    plugins.lazygit = {
      enable = true;
    };

    keymaps = [
      {
        key = "<leader>lg";
        mode = "n";
        action = "<cmd>LazyGit<cr>";
        options.desc = "Opens LazyGit For The Current Project";
      }
    ];
  };
}
