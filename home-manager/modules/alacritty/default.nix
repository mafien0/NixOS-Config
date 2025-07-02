{ pkgs, ...}: {
	home.packages = with pkgs; [
		alacritty
	];

	home.file = {
		".config/alacritty/alacritty.toml".file = ./alacritty.toml;
		".config/alacritty/theme.toml".file = ./theme.toml;
	};
}
