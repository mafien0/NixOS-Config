{
	xdg.mimeApps = {
		enable = true;
		defaultApplications = {

			"application/x-terminal-emulator" = "com.mitchellh.ghostty.desktop";
			"x-scheme-handler/terminal" = "com.mitchellh.ghostty.desktop";

			"text/html" = "firefox.desktop";
			"x-scheme-handler/http" = "firefox.desktop";
			"x-scheme-handler/https" = "firefox.desktop";
			"x-scheme-handler/about" = "firefox.desktop";
			"x-scheme-handler/unknown" = "firefox.desktop";

			"text/plain" = "org.gnome.gedit.desktop";

			"image/jpeg" = "org.gnome.Loupe.desktop";
			"image/png" = "org.gnome.Loupe.desktop";
			"image/gif" = "org.gnome.Loupe.desktop";

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
