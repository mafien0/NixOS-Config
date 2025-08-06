{ pkgs, ... }: {
	stylix = {
		enable = true;
		autoEnable = false;

		# A bit changed gruvbox dark hard
		base16Scheme = {
			base00 = "1d2021";
			base01 = "282828";
			base02 = "3c3836";
			base03 = "504945";
			base04 = "7c6f64";
			base05 = "d5c4a1";
			base06 = "ebdbb2";
			base07 = "fbf1c7";
			base08 = "fb4934";
			base09 = "fe8019";
			base0A = "fabd2f";
			base0B = "b8bb26";
			base0C = "8ec07c";
			base0D = "83a598";
			base0E = "d3869b";
			base0F = "d65d0e";
		};
		polarity = "dark";

		cursor = {
			package = pkgs.volantes-cursors;
			name = "volantes_cursors";
			size = 24;
		};

		fonts = {
			monospace = {
				package = pkgs.fira-code;
				name = "Fira Code";
			};
			sansSerif = {
				package = pkgs.dejavu_fonts;
				name = "DejaVu Sans";
			};
			serif = {
				package = pkgs.dejavu_fonts;
				name = "DejaVu Serif";
			};
			sizes = {
				terminal = 11;
        applications = 11;
        desktop = 11;
        popups = 11;
			};
		};
	};
}
