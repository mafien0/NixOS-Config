{

	nix = {
			gc = {
				automatic = true;
				dates = "*-*-* 00:00:00/3";
				options = "--delete-older-than 10d";
			};
	};
}
