{ pkgs, ...}: {
	home.packages = with pkgs; [
		alacritty
	];

	home.file = {
		".config/alacritty/alacritty.toml".source = ./alacritty.toml;
		".config/alacritty/theme.toml".source = ./theme.toml;
	};

	programs.btop = {
		enable = true;

		settings = {
			color_theme = "gruvbox_dark";
		};
	};
}
