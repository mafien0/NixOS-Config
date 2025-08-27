{ pkgs, ... }: {
	imports = [
		./tools.nix
	];

	home.packages = with pkgs; [
		thefuck
	];

	programs.zsh = {
		enable = true;
		autosuggestion.enable = true;
		history.size = 10000;

		oh-my-zsh = {
			enable = true;
			plugins = [ "git" "thefuck" ];
			theme = "crcandy";
		};

		shellAliases = {
			# Rebuilds
			nrs = "nh os switch";
			nrb = "nh os boot";
			hms = "nh home switch";

			# Nvim
			v = "nvim";
			vi = "nvim";
			vim = "nvim";


			# Others
			die =  "shutdown now";
			c = "clear";
			ff = "fastfetch";
		};
	};
}
