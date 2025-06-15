_: {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$modifier, T, exec, kitty"
      "$modifier, Q, killactive"
      "$modifier, Y, exec, kitty -e yazi"
      "$modifier, SPACE, exec, rofi -show drun"

      "$modifier, 1, workspace, 1"
      "$modifier, 2, workspace, 2"
      "$modifier, 3, workspace, 3"
      "$modifier, 4, workspace, 4"
      "$modifier, 5, workspace, 5"

      "$modifier SHIFT, 1, movetoworkspace, 1"
      "$modifier SHIFT, 2, movetoworkspace, 2"
      "$modifier SHIFT, 3, movetoworkspace, 3"
      "$modifier SHIFT, 4, movetoworkspace, 4"
      "$modifier SHIFT, 5, movetoworkspace, 5"
    ];

    bindm = [
      "$modifier, mouse:272, movewindow"
      "$modifier, mouse:273, resizewindow"
    ];
  };
}
