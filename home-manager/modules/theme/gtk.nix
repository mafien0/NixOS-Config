{ pkgs, ... }: {
	gtk = {
		enable = true;
		font.name = "Fira Code Medium 12";
		theme = {
			name = "Gruvbox-Yellow-Dark";
			package = pkgs.gruvbox-gtk-theme.override {
				themeVariants = [ "yellow" ];
			};
		};

		iconTheme = {
			name = "Gruvbox-Plus-Dark";
			package = pkgs.gruvbox-plus-icons.override {
				folder-color = "yellow";
			};
		};
	};
}
