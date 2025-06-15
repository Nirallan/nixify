{
  inputs,
  pkgs,
  ...
}: {
  imports = [ 
    inputs.nixvim.homeManagerModules.nixvim
    ./wakatime
  ];

  programs.nixvim = {
    enable = true;
    globals.mapleader = " ";

    opts = {
      number = true;
      relativenumber = true;

      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      smartindent = true;

      wrap = false;

      hlsearch = true;
      incsearch = true;
      ignorecase = true;
      smartcase = true;

      cursorline = false;

      termguicolors = true;
      signcolumn = "yes";

      backspace = "indent,eol,start";

      clipboard = "unnamedplus";

      splitright = true;
      splitbelow = true;
    };
  };
}
