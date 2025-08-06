{
	imports = [
		./stylix.nix
		./gtk.nix
		./qt5ct.nix
		./defaultApps.nix
	];

	dconf = {
		enable = true;
		settings = {
			"org/gnome/desktop/interface" = {
				color-scheme = "prefer-dark";
			};
		};
	};
}
