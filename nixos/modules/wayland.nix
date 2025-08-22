{ pkgs, ... }: {

	services.xserver = {
		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;
	};

	environment.systemPackages = with pkgs; [
		cliphist
		wl-clipboard
	];

	environment.sessionVariables = {
		GTK_USE_PORTAL = "0";
		GDK_BACKEND = "wayland,x11";
		SDL_VIDEODRIVER = "wayland";
		CLUTTER_BACKEND = "wayland";
		QT_QPA_PLATFORMTHEME = "qt5ct";
		ELECTRON_OZONE_PLATFORM_HINT = "wayland";
		XDG_SESSION_TYPE = "wayland";
	};

	xdg.mime.defaultApplications = {
		"text/html" = "firefox.desktop";
		"image/*" = "eog.desktop";
		"video/*" = "mpv.desktop";
		"inode/directory" = "org.gnome.Nautilus.desktop";
	};
}
