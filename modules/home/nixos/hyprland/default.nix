_: {
  imports = [
    ./keybinds.nix
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
