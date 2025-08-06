{ pkgs, ... }: {
	stylix = {
		enable = true;
		autoEnable = false;

		# A bit changed gruvbox dark hard
		# base16Scheme = {
		# 	base00 = "1d2021";
		# 	base01 = "282828";
		# 	base02 = "3c3836";
		# 	base03 = "504945";
		# 	base04 = "7c6f64";
		# 	base05 = "d5c4a1";
		# 	base06 = "ebdbb2";
		# 	base07 = "fbf1c7";
		# 	base08 = "fb4934";
		# 	base09 = "fe8019";
		# 	base0A = "fabd2f";
		# 	base0B = "b8bb26";
		# 	base0C = "8ec07c";
		# 	base0D = "83a598";
		# 	base0E = "d3869b";
		# 	base0F = "d65d0e";
		# };

		# Rose pine
		base16Scheme = {
			base00 = "191724";
			base01 = "1f1d2e";
			base02 = "26233a";
			base03 = "6e6a86";
			base04 = "908caa";
			base05 = "e0def4";
			base06 = "e0def4";
			base07 = "524f67";
			base08 = "eb6f92";
			base09 = "f6c177";
			base0A = "ebbcba";
			base0B = "31748f";
			base0C = "9ccfd8";
			base0D = "c4a7e7";
			base0E = "f6c177";
			base0F = "524f67";
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
