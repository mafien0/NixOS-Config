{ pkgs, ... }: {

  home.packages = with pkgs; [
		waybar
		swaynotificationcenter
	];

  home.file = {
    ".config/waybar/config.jsonc".source = ./config.jsonc;
    ".config/waybar/style.css".source = ./style.css;
	};
}
