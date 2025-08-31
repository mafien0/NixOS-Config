{
	programs.fastfetch = {
		enable = true;
		settings = {
			logo.source = "NixOS";
			modules = [
				"title"

				"separator"

				"os"
				"host"
				"kernel"
				"uptime"

				"separator"

				"packages"
				"de"
				"terminal"
				"shell"

				"separator"

				"theme"
				"icons"
				"cursor"
				"terminalfont"

				"separator"

				"disk"
			];
		};
	};
}
