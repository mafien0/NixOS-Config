{ config, pkgs, lib, ... }: {

	imports = [
		./hardware-configuration.nix
		./modules.nix
	]
		# optional include of my homelab(its outside of a git repo for security reasons)
		++ lib.optional (builtins.pathExists /home/mafien0/homelab) /home/mafien0/homelab;

	i18n.defaultLocale = "en_US.UTF-8";

	networking = {
		networkmanager.enable = true;
		hostName = "nixos";
	};

	time = {
		timeZone = "Asia/Almaty";
		hardwareClockInLocalTime = true;
	};

	services.displayManager.ly.enable = true;

	nix.settings.experimental-features = ["nix-command" "flakes"];

	nixpkgs.config.allowUnfree = true;
	system.stateVersion = "25.05";
}

