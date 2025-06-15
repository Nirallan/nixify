{
  inputs,
  pkgs,
  hostname,
  username,
  ...
}:
{
  imports = [ inputs.home-manager.darwinModules.home-manager ];

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = false;
    backupFileExtension = "backup";

    extraSpecialArgs = {
      inherit inputs;
      inherit hostname;
      inherit username;
      nixvim = inputs.nixvim;
    };

    users.${username} = {
      imports = [
        ../../home/shared
      ];

      home = {
        stateVersion = "25.05";
      };
    };
  };

  users.users.${username} = {
    home = "/Users/${username}";
  };
}
