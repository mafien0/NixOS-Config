{ pkgs, ...}: {

	# Install extensions
	home.packages = with pkgs.gnomeExtensions; [
		appindicator
		clipboard-history
	];

	# Enable extensions
	dconf.settings = {
		"org/gnome/shell" = {
			disable-user-extensions = false;
			enabled-extensions = with pkgs.gnomeExtensions; [
				appindicator.extensionUuid
				clipboard-history.extensionUuid
			];
		};

		# Extensions settings
		"org/gnome/shell/extensions/clipboard-history" = {
			toggle-menu = ["<Super>period"];
		};


	};
}
