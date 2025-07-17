{ pkgs, ... }: {

	xdg.mimeApps = {
		enable = true;
		defaultApplications = {

# Eog
			"image/png" = "org.gnome.eog.desktop";
			"image/jpeg" = "org.gnome.eog.desktop";
			"image/jpg" = "org.gnome.eog.desktop";
			"image/gif" = "org.gnome.eog.desktop";
			"image/bmp" = "org.gnome.eog.desktop";
			"image/svg+xml" = "org.gnome.eog.desktop";

# Mpv
		"video/mp4" = "mpv.desktop";
		"video/x-matroska" = "mpv.desktop";
		"video/webm" = "mpv.desktop";
		"audio/mpeg" = "mpv.desktop";
		"audio/ogg" = "mpv.desktop";
		"audio/wav" = "mpv.desktop";

# Nautilus
		"inode/directory" = "org.gnome.Nautilus.desktop";

		};
	};
}
