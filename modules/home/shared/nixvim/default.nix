{
  inputs,
  pkgs,
  ...
}: {
  imports = [ 
    inputs.nixvim.homeManagerModules.nixvim
    ./wakatime
    ./tmux-navigator
    ./colorscheme
    ./web-devicons
    ./nvim-tree
    ./which-key
    ./telescope
    ./dashboard
    ./auto-session
    ./bufferline
    ./lualine
    ./dressing
    ./treesitter
    ./indent-blankline
    ./completion
    ./auto-pairs
    ./todo-comments
    ./lsp
    ./linter
    ./lazygit
    ./colorizer
    ./barbecue
    ./neocord
    ./noice
    ./notify
    ./nui
    ./plenary
    ./snippets
    ./wilder
    ./project-nvim
    ./fidget
  ];

  home.packages = with pkgs; [
    gcc
    ripgrep
    statix
    shellcheck
    stylua
    nixfmt-rfc-style
    nodejs
    prettierd
    nodePackages.jsonlint
    nodePackages.eslint_d
    nodePackages.prettier
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
