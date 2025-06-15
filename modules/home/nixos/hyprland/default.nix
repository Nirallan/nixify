_: {
  imports = [
    ./keybinds.nix
    ./animations.nix
    ./decorations.nix
    ./layout.nix
    ./misc.nix
    ./monitor.nix
    ./auto-run.nix
    ./hypridle.nix
    ./hyprlock.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      general = {
        "$modifier" = "SUPER";
      };

      input = {
        kb_layout = "no";
      };
    };
  };
}
