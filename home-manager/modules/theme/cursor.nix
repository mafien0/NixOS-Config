{ config, pkgs, ... }: {
	
	home.pointerCursor = {
		enable = true; 
		package = pkgs.volantes-cursors;
		name = "volantes_cursors";
		size = 24;
	};
}
