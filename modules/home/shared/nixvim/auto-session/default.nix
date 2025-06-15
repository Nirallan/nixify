_: {
  programs.nixvim = {
    plugins = {
      auto-session = {
        enable = true;
        settings = {
          auto_save = true;
          auto_restore = false;
        };
      };
    }; 

    keymaps = [
      {
        key = "<leader>wr";
        mode = "n";
        action = "<cmd>SessionRestore<cr>";
        options.desc = "Restores a Saved Session";
      }
      {
        key = "<leader>ws";
        mode = "n";
        action = "<cmd>SessionSave<cr>";
        options.desc = "Saves a New Session";
      }
    ];
  };
}
