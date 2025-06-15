{
  pkgs,
  ...
}: {
  programs = {
    hyprland.enable = true;
  };
  
  environment.systemPackages = with pkgs; [
    greetd.tuigreet
    _1password-gui
  ];
}
