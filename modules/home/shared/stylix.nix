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
      url = "https://box.apeiros.xyz/public/everforest_walls/nature/fog_forest_1.png";
      sha256 = "wQxWI0FNc37mvRO4zV123NXG50XOO6qKv7J8IKIxgmo=";
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
    };
  };
}
