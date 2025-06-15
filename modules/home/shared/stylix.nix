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
      url = "https://image-0.uhdpaper.com/wallpaper/anime-art-night-sky-scenery-4k-wallpaper-uhdpaper.com-140@0@f.jpg";
      sha256 = "IuJ1nAchxC4JS1VZw7GqjB+dXbI/7ATTdoXeaiHayV4=";
    };

    base16Scheme = ../../.. + "/themes/rose-pine-moon.yaml";

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
