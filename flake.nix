{
	description = "NixOS configuration with unstable nixpkgs and Home Manager";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
		home-manager = {
			url = "github:nix-community/home-manager/release-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixcord = {
			url = "github:kaylorben/nixcord";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = inputs@{ 
		nixpkgs,
		home-manager,
		nixvim,
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
						nixvim.homeModules.nixvim
						nixcord.homeModules.nixcord
						./home-manager/home.nix
					];
				};
			};
		};
}
