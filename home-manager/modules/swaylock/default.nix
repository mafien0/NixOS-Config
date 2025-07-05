{ pkgs, ... }: {

	home.packages = with pkgs; [
		swaylock
	];

	home.file = {
		".config/swaylock/config".source = ./config;
	};
}
