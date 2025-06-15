{
  pkgs,
  ...
}: {
  programs = {
    zsh.enable = true;
    hyprland.enable = true;
  };
  
  environment.systemPackages = with pkgs; [
    greetd.tuigreet
    _1password-gui
  ];
}
