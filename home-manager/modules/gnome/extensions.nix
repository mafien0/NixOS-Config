{ pkgs, ...}: {

	# Install extensions
	home.packages = with pkgs.gnomeExtensions; [
		appindicator
		tactile
		clipboard-history
	];

	# Enable extensions
	dconf.settings = {
		"org/gnome/shell" = {
			disable-user-extensions = false;
			enabled-extensions = with pkgs.gnomeExtensions; [
				tactile.extensionUuid
				appindicator.extensionUuid
				clipboard-history.extensionUuid
			];
		};

		# Extensions settings
		"org/gnome/shell/extensions/tactile" = {
			show-tiles = ["<Super>r"];
		};

		"org/gnome/shell/extensions/clipboard-history" = {
			toggle-menu = ["<Super>period"];
		};


	};
}
