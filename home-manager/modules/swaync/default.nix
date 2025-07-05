{ pkgs, ... }: {

	home.packages = with pkgs; [
		swaynotificationcenter
	];

	home.file = {
		".config/swaync/config.json".source = ./config.json;
		".config/swaync/style.css".source = ./style.css;
	};
}
