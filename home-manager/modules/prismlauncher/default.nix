{ pkgs, ... }: {
	home.packages = with pkgs; [
		prismlauncher 
	];

	home.file = {
		".local/share/PrismLauncher/themes/Gruvbox-Dark".source = ./Gruvbox-Dark;
	};
}
