_: {
  programs.nixvim = {
    colorschemes.everforest = {
      enable = true;
    };

    extraConfigLua = ''
      require("everforest").setup({
        background = "hard"
      })

      vim.cmd("colorscheme everforest")
    '';
  };
}
