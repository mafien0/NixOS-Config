{ config, lib, pkgs, ...}: {

	imports = [
		./modules.nix
	];

	home = {
		username = "mafien0";
		homeDirectory = "/home/mafien0";
		stateVersion = "25.05";
	};
}
