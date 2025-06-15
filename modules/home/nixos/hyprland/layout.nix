{
  config,
  lib,
  ...
}:
with lib;
let
  inherit (config.lib.stylix) colors;
in
{
  wayland.windowManager.hyprland = {
    settings = {
      general = {
        layout = "dwindle";
        gaps_in = 14;
        gaps_out = 20;
        border_size = 2;
        resize_on_border = true;
        "col.active_border" = mkForce "0xff${colors.base08}";
        "col.inactive_border" = mkForce "0x00${colors.base08}";
      };
    };
  };
}
