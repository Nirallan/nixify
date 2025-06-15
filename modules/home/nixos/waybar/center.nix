_: {
  programs.waybar.settings.mainBar = {
    modules-center = [
      "hyprland/workspaces"
    ];

    "hyprland/workspaces" = {
      format = "{icon}";
      format-icons = {
        "1" = "●";
        "2" = "●";
        "3" = "●";
        "4" = "●";
        "5" = "●";
      };
      persistent-workspaces = {
        "*" = 5;
      };
      on-click = "activate";
      tooltip = false;
    };
  };
}
