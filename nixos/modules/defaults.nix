{ pkgs, ... }: {
	environment.variables = {
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

			# Images
			"image/png" = "org.gnome.Loupe.desktop";
			"image/jpeg" = "org.gnome.Loupe.desktop";
			"image/jpg" = "org.gnome.Loupe.desktop";
			"image/gif" = "org.gnome.Loupe.desktop";
			"image/bmp" = "org.gnome.Loupe.desktop";
			"image/svg+xml" = "org.gnome.Loupe.desktop";
			"image/webp" = "org.gnome.Loupe.desktop";
			"image/tiff" = "org.gnome.Loupe.desktop";
			"image/x-png" = "org.gnome.Loupe.desktop";
			"image/vnd.microsoft.icon" = "org.gnome.Loupe.desktop";

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
