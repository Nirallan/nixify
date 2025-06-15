_: {
  programs.nixvim = {
    colorschemes.rose-pine = {
      enable = true;
    };

    extraConfigLua = ''
      require("rose-pine").setup({
        variant = "moon"
      })

      vim.cmd("colorscheme rose-pine-moon")
    '';
  };
}
