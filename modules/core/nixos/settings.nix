{
  username,
  ...
}: {
  nix = {
    settings = {
      experimental-features = [
        "nix-command"
	"flakes"
      ];

      allowed-users = [ username ];
      auto-optimise-store = true;
    };

    optimise.automatic = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
}
