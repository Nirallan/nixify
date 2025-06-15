{
  config,
  ...
}:
let
  colors = (
    with config.lib.stylix.colors;
    ''
      @define-color background #${base00};
      @define-color foreground #${base0F};
      @define-color cursor #${base00};

      @define-color color0 #${base00};
      @define-color color1 #${base01};
      @define-color color2 #${base02};
      @define-color color3 #${base03};
      @define-color color4 #${base04};
      @define-color color5 #${base05};
      @define-color color6 #${base06};
      @define-color color7 #${base07};
      @define-color color8 #${base08};
      @define-color color9 #${base09};
      @define-color color10 #${base0A};
      @define-color color11 #${base0B};
      @define-color color12 #${base0C};
      @define-color color13 #${base0D};
      @define-color color14 #${base0E};
      @define-color color15 #${base0F};
      @define-color active #${base06};
      @define-color inactive #${base03};
    ''
  );
in
{
  programs.waybar.style = ''
    ${colors}

    window#waybar {
      background-color: @background;
      border-radius: 15px;
    }

    #custom-launcher {
      color: @color14;
    }

    #custom-notifications {
      color: @color9;
    }

    #custom-dashboard {
      color: @color13;
    }

    #custom-terminal {
      color: @color10;
    }

    #custom-performance {
      color: @color11;
      font-size: 22px;
      padding-top: 10px;
      padding-bottom: 10px;
    }

    #bluetooth {
      color: @color8;
    }

    #wireplumber {
      color: @color11;
    }

    #pulseaudio.mic {
      color: @color10;
    }

    #network {
      color: @color14;
    }

    #custom-power {
      color: @color8;
    }

    #custom-lock {
      color: @color13;
    }

    #custom-logout {
      color: @color14;
    }

    #custom-reboot {
      color: @color10;
    }

    #custom-separator {
      color: @color3;
      font-size: 18px;
      padding: 0;
      margin: -4px 0 -4px 0;
      min-height: 1px;
    }

    #custom-launcher,
    #custom-notifications,
    #custom-dashboard,
    #custom-terminal,
    #custom-performance,
    #bluetooth,
    #wireplumber,
    #network,
    #clock,
    #custom-power,
    #custom-lock,
    #custom-logout,
    #custom-reboot {
      font-size: 22px;
      padding-top: 10px;
      padding-bottom: 10px;
    }

    #pulseaudio-slider {
      min-height: 100px;
      min-width: 14px;
      margin-bottom: -6px;
      margin-top: -6px;
      background: transparent;
    }

    #pulseaudio-slider trough {
      background-color: rgba(255, 255, 255, 0.08);
      border-radius: 6px;
      border: none;
      padding: 0;
      min-width: 14px;
    }

    #pulseaudio-slider highlight {
      background-color: @color11;
      border-radius: 6px;
      min-width: 14px;
    }

    #pulseaudio-slider slider {
      all: unset;
      min-width: 0;
      min-height: 0;
      background: transparent;
      border: none;
      box-shadow: none;
    }

    #pulseaudio-slider slider:hover {
      background-color: @color11;
    }

    #pulseaudio {
      padding-bottom: 6px;
    }
  '';
}
