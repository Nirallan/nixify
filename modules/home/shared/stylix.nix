{
  inputs,
  pkgs,
  config,
  ...
}:
{
  imports = [ inputs.stylix.homeModules.stylix ];

  stylix = {
    enable = true;
    autoEnable = true;

    image = pkgs.fetchurl {
      url = "https://box.apeiros.xyz/public/everforest_walls/other/car_rain.png";
      sha256 = "";
    };

    base16Scheme = ../../.. + "/themes/everforest-dark-hard.yaml";

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };

    fonts = {
      serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
      monospace = {
        package = pkgs.nerd-fonts.terminess-ttf;
        name = "Terminess Nerd Font";
      };
    };

    targets = {
      firefox.profileNames = [ "default" ];
      nixvim.enable = false;
    };
  };
}
