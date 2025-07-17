{ pkgs, ... }: {
	gtk = {
		enable = true;
		font.name = "Fira Code Medium 12";
		theme = {
			name = "Gruvbox-Dark";
			package = pkgs.gruvbox-gtk-theme;
		};

		iconTheme = {
			name = "Gruvbox-Plus-Dark";
			package = pkgs.gruvbox-plus-icons;
		};
	};
}
