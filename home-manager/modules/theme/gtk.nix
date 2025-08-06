{ pkgs, ... }: {
	stylix.targets.gtk.enable = true;
	gtk = {
		enable = true;

		iconTheme = {
			name = "Gruvbox-Plus-Dark";
			package = pkgs.gruvbox-plus-icons.override {
				folder-color = "gold";
			};
		};
	};
}
