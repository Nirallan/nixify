_: {
  programs.waybar.settings.mainBar = {
    modules-left = [
      "custom/launcher"
      "custom/notifications"
      "custom/dashboard"
      "custom/terminal"
      "custom/performance"
    ];

    "custom/launcher" = {
      format = "󱓞";
      on-click = "rofi -show drun";
      tooltip = false;
    };

    "custom/notifications" = {
      format = "";
      tooltip = false;
    };

    "custom/dashboard" = {
      format = "󰕮";
      tooltip = false;
    };

    "custom/terminal" = {
      format = "";
      on-click = "kitty";
      tooltip = false;
    };

    "custom/performance" = {
      format = "󱐋";
      on-click = "kitty btop";
      tooltip = false;
    };
  };
}
