{
	xdg.mimeApps = {
		enable = true;
		defaultApplications = {
			"text/html" = "firefox.desktop";
			"x-scheme-handler/http" = "firefox.desktop";
			"x-scheme-handler/https" = "firefox.desktop";
			"x-scheme-handler/about" = "firefox.desktop";
			"x-scheme-handler/unknown" = "firefox.desktop";

			"text/plain" = "org.gnome.gedit.desktop";

			"image/jpeg" = "org.gnome.eog.desktop";
			"image/png" = "org.gnome.eog.desktop";
			"image/gif" = "org.gnome.eog.desktop";

			"video/mp4" = "mpv.desktop";
			"video/x-msvideo" = "mpv.desktop";
			"video/x-matroska" = "mpv.desktop";
			"video/webm" = "mpv.desktop";

			"audio/mpeg" = "org.gnome.Music.desktop";
			"audio/mp4" = "org.gnome.Music.desktop";

			"application/pdf" = "org.gnome.Evince.desktop";

			"application/zip" = "org.gnome.FileRoller.desktop";
			"application/x-tar" = "org.gnome.FileRoller.desktop";
		};
	};
}
