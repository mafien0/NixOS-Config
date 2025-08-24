{ pkgs, ... }: {
	imports = [
		./keybinds.nix
		./extensions.nix
		./defaultapps.nix
	];

	# Cursor
	home.pointerCursor = {
		package = pkgs.volantes-cursors;
		name = "volantes_cursors";
		size = 24;
		gtk.enable = true;
		x11.enable = true;
		x11.defaultCursor = "left_ptr";
	};

	# Gnome
	dconf = {
		enable = true;
		settings = {

			"org/gnome/shell".favorite-apps = [
				"firefox.desktop"
				"vesktop.dekstop"
				"com.mitchellh.ghostty.desktop"
				"org.prismlauncher.PrismLauncher.desktop"
				"spotify.desktop"
				"org.gnome.Nautilus.desktop"
			];

			# Preferences
			"org/gnome/desktop/wm/preferences" = {
				num-workspaces = 5;
				auto-switch-to-new-workspace = false;
			};
			"org/gnome/mutter" = {
				dynamic-workspaces = false;
				auto-switch-to-new-workspace = false;
			};

			# Interface
			"org/gnome/desktop/interface" = {
				color-scheme = "prefer-dark";
				enable-hot-corners = false;

				cursor-theme = "volantes_cursors";
				cursor-size = 24;
			};

			# Alt+Tab current workspace only
			"org/gnome/shell/app-switcher".current-workspace-only = true;
			"org/gnome/shell/window-switcher".current-workspace-only = true;

			# Input
			"org/gnome/desktop/input-sources".xkb-options = [
				"grp:alt_shift_toggle"
				"caps:escape"
			];

		};
	};
}
