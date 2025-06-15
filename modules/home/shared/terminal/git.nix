_: {
  programs = {
    git = {
      enable = true;
      userName = "IrradiatedRaven";
      userEmail = "fredrik.stenbraten@outlook.com";
      extraConfig = {
        init.defaultBranch = "production";
      };
    };

    lazygit = {
      enable = true;
    };
  };
}
