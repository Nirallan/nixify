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
      url = "https://w.wallhaven.cc/full/rr/wallhaven-rr1kow.jpg";
      sha256 = "i9BUrp8RaNo4PUCExBunPPlyTi+v3ZlUC4xKosd5RxA=";
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
