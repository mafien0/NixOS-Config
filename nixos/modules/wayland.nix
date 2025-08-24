{ pkgs, ... }: {
	# Enabling gnome
	services.xserver = {
		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;
	};

	# Packages
	environment.systemPackages = with pkgs; [
		gnomeExtensions.appindicator
		cliphist
		wl-clipboard

		gst_all_1.gstreamer
		gst_all_1.gst-plugins-base
		gst_all_1.gst-plugins-good
		gst_all_1.gst-plugins-bad
		gst_all_1.gst-plugins-ugly
		gst_all_1.gst-libav

		xdg-desktop-portal-gnome
		xdg-desktop-portal-gtk
	];

	# Services
	services.udev.packages = [ pkgs.gnome-settings-daemon ];
	services.gvfs.enable = true;
	services.dbus.enable = true;
	programs.dconf.enable = true;

	# Portal
	xdg.portal = {
		enable = true;
		extraPortals = with pkgs; [
			xdg-desktop-portal-gnome
			xdg-desktop-portal-gtk
		];
		config = {
			common.default = [ "gnome" "gtk" ];
		};
	};

	# Env variables
	environment.sessionVariables = {
		GTK_USE_PORTAL = "1";
		GDK_BACKEND = "wayland";
		SDL_VIDEODRIVER = "wayland";
		CLUTTER_BACKEND = "wayland";
		QT_QPA_PLATFORMTHEME = "qt5ct";
		ELECTRON_OZONE_PLATFORM_HINT = "wayland";
		XDG_SESSION_TYPE = "wayland";
	};
}
