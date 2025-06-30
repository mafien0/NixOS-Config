{
	description = "NixOS configuration with unstable nixpkgs and Home Manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprpanel = {
      url = "github:Jas-SinghFSU/HyprPanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin = {
      url = "github:catppuccin/nix";
    };

    nixcord = {
      url = "github:kaylorben/nixcord";
    };
  };

  outputs = inputs@{ 
    nixpkgs,
    home-manager,
    nvf,
    nixvim,
    hyprpanel,
    catppuccin,
    nixcord,
    ... }: let
      system = "x86_64-linux";

      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./nixos/configuration.nix
            catppuccin.nixosModules.catppuccin
            home-manager.nixosModules.home-manager
          ];

          specialArgs = {
            inherit inputs system;
          };
        };
      };

      homeConfigurations = {
        mafien0 = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = {
            inherit inputs system;
          };
          modules = [
            nvf.homeManagerModules.default
            nixvim.homeModules.nixvim
            catppuccin.homeModules.catppuccin
            nixcord.homeModules.nixcord
            ./home-manager/home.nix
          ];
        };
      };
    };
}
