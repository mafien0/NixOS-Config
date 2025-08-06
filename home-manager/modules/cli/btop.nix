{ lib, ... }: {

	programs.btop = {
		enable = true; 
		settings = {
			color_theme = lib.mkForce "TTY"; # Just use TTY colors.
			vim_keys = true;
		};
	};
}
