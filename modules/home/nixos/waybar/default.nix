_: {
  imports = [
    ./style.nix
    ./left.nix
    ./center.nix
    ./right.nix
  ];

  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "right";
        width = 60;
        spacing = 8;

        margin-top = 20;
        margin-right = 20;
        margin-bottom = 20;

        "custom/separator" = {
          format = "━━";
          tooltip = false;
        };
      };
    };
  };
}
