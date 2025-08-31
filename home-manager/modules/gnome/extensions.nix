{ pkgs, ...}: {

	# Install extensions
	home.packages = with pkgs.gnomeExtensions; [
		appindicator
		clipboard-history
		color-picker
	];

	# Enable extensions
	dconf.settings = {
		"org/gnome/shell" = {
			disable-user-extensions = false;
			enabled-extensions = with pkgs.gnomeExtensions; [
				appindicator.extensionUuid
				clipboard-history.extensionUuid
				color-picker.extensionUuid
			];
		};

		# Extensions settings
		"org/gnome/shell/extensions/clipboard-history" = {
			toggle-menu = ["<Super>period"];
		};
		"org/gnome/shell/extensions/color-picker" = {
			auto-copy = true;
			color-picker-shortcut = ["<Control><Super>c"];
		};


	};
}
