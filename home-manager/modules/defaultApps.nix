{ pkgs, ... }: {

  home.sessionVariables = {
		EDITOR = "nvim";
		VISUAL = "nvim";

		BROWSER = "${pkgs.firefox}/bin/firefox";
	};

	xdg.mimeApps = {
		enable = true;
		defaultApplications = {

# Firefox
			"application/xhtml+xml" = "firefox.desktop";
			"text/html" = "firefox.desktop";
			"text/xml" = "firefox.desktop";
			"x-scheme-handler/http" = "firefox.desktop";
			"x-scheme-handler/https" = "firefox.desktop";

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
