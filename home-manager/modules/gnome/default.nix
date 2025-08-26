{ pkgs, config, ... }: {
	imports = [
		./keybinds.nix
		./extensions.nix
		./defaultapps.nix
	];


	# Wallpaper
	home.file."Pictures/wallpaper.jxl".source = ./wallpaper.jxl;
	dconf.settings."org/gnome/desktop/background".picture-uri      = "file://${config.home.homeDirectory}/Pictures/wallpaper.jxl";
	dconf.settings."org/gnome/desktop/background".picture-uri-dark = "file://${config.home.homeDirectory}/Pictures/wallpaper.jxl";

	# Cursor
	home.pointerCursor = {
		package = pkgs.volantes-cursors;
		name = "volantes_cursors";
		gtk.enable = true;
		x11.enable = true;
		x11.defaultCursor = "left_ptr";
	};

	# Icon theme
	home.packages = [ pkgs.morewaita-icon-theme ]; # For some reason, this has to be included
	gtk.iconTheme = {
		package = pkgs.morewaita-icon-theme;
		name = "MoreWaita";
	};

	# Gnome
	dconf = {
		enable = true;
		settings = {

			"org/gnome/shell".favorite-apps = [
				"firefox.desktop"
				"vesktop.desktop"
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
				accent-color = "slate";
				color-scheme = "prefer-dark";
				icon-theme = "MoreWaita";
				cursor-theme = "volantes_cursors";

				enable-hot-corners = false;
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
