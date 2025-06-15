_: {
  programs.waybar.settings.mainBar = {
    modules-right = [
      "bluetooth"
      "group/audio"
      "network"
      "custom/separator"
      "clock"
      "custom/separator"
      "group/powermenu"
    ];

    "bluetooth" = {
      format = "󰂱";
      on-click = "blueman-manager";
      tooltip = false;
    };

    "group/audio" = {
      orientation = "inherit";
      drawer = {
        transition-duration = 500;
        transition-left-to-right = false;
      };
      modules = [
        "wireplumber"
        "pulseaudio#mic"
        "pulseaudio/slider"
      ];
    };

    "wireplumber" = {
      format = "{icon}";
      format-muted = "󰝟";
      format-icons = {
        default = [
          ""
          ""
          ""
        ];
      };
      on-click-right = "pavucontrol";
      on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
      tooltip = false;
    };

    "pulseaudio#mic" = {
      format = "{format_source}";
      format-source = "";
      format-source-muted = "󰍭";
      on-click-right = "pavucontrol";
      on-click = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
      tooltip = false;
    };

    "pulseaudio/slider" = {
      min = 0;
      max = 100;
      orientation = "vertical";
    };

    "network" = {
      format-wifi = "";
      format-ethernet = "󰛳";
      format-disconnected = "";
      tooltip = false;
    };

    "clock" = {
      format = "{:%I\n%M\n\n%p}";
      tooltip = false;
    };

    "group/powermenu" = {
      orientation = "inherit";
      drawer = {
        transition-duration = 500;
        transition-left-to-right = false;
      };
      modules = [
        "custom/power"
        "custom/lock"
        "custom/logout"
        "custom/reboot"
      ];
      tooltip = false;
    };

    "custom/power" = {
      format = "󰐥";
      on-click = "systemctl poweroff";
      tooltip = false;
    };

    "custom/lock" = {
      format = "";
      on-click = "hyprlock";
      tooltip = false;
    };

    "custom/logout" = {
      format = "󰍃";
      on-click = "loginctl terminate-user $USER";
      tooltip = false;
    };

    "custom/reboot" = {
      format = "󰜉";
      on-click = "systemctl reboot";
      tooltip = false;
    };
  };
}
