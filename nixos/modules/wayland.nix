{ pkgs, ... }: {

	programs.hyprland = {
		enable = true;
		xwayland.enable = true;
		portalPackage = pkgs.xdg-desktop-portal-gtk;
	};

	environment.systemPackages = with pkgs; [
		alacritty
		grim
		slurp
		swaylock
		swaybg
		swaynotificationcenter
		waypaper
		waybar

		gnome-keyring
		cliphist
		wl-clipboard

		xdg-desktop-portal
		xdg-desktop-portal-gtk
		xdg-desktop-portal-hyprland
	];

	xdg = {
		enable = true;
		portal = {
			enable = true;
			xdgOpenUsePortal = true;
			config = {
				common.default = [ "gtk" "hyprland" ];
				hyprland.default = [ "gtk" "hyprland" ];
			};
			extraPortals = with pkgs; [
				xdg-desktop-portal-gtk
				xdg-desktop-portal-hyprland
			];
		};
	};

	xdg.mime.defaultApplications = {
		"text/html" = "firefox.desktop";
		"image/*" = "eog.desktop";
		"video/*" = "mpv.desktop";
		"inode/directory" = "org.gnome.Nautilus.desktop";
	};
}
