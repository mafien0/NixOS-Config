{ pkgs, ...}: {

	home.packages = with pkgs; [
		rofi-wayland
		bemoji
	];

	home.file = {
		".config/rofi/config.rasi".source = ./config.rasi;
		".config/rofi/gruvbox-dark-hard.rasi".source = ./gruvbox-dark-hard.rasi;
	};
}
