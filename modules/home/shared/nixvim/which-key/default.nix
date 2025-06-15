_: {
  programs.nixvim = {
    plugins = {
      which-key = {
        enable = true;
      };
    };

    opts = {
      timeout = true;
      timeoutlen = 500;
    };
  };
}
