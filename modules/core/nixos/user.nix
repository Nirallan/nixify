{
  inputs,
  pkgs,
  hostname,
  username,
  ...
}: {
  imports = [ inputs.home-manager.nixosModules.home-manager ];

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
        ./../../home/shared
	./../../home/nixos
      ];

      home = {
        username = username;
	homeDirectory = "/home/${username}";
	stateVersion = "25.05";
      };
    };
  };
  
  users.mutableUsers = true;

  users.users.${username} = {
    isNormalUser = true;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };
}
