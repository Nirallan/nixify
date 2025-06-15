_: {
  imports = [
    ./zsh.nix
    ./starship.nix
    ./yazi.nix
    ./eza.nix
    ./git.nix
    ./aliases.nix
    ./performance.nix
  ];
  
  programs.kitty = {
    enable = true;
  };
}
