{ pkgs, ...}: {

	programs.fish = {
		enable = true;
		shellAliases = {

			# Rebuilds
			nrs = "sudo nixos-rebuild switch --flake ~/nix";
			nrb = "sudo nixos-rebuild boot --flake ~/nix";
			hms = "home-manager switch --flake ~/nix";

			# Nvim
			v = "nvim";
			vi = "nvim";
			vim = "nvim";

			# Tmux
			t = "tmux";
			
			# Eza(ls)
			ls = "eza --icons=auto --classify --group-directories-first --header --time-style=long-iso";
			l = "eza -la --icons=auto --classify --group-directories-first --header --time-style=long-iso";
			lt = "eza --tree --icons=auto --classify --group-directories-first --header --time-style=long-iso";

			# Others
			die =  "shutdown now";
			c = "clear";
			ff = "fastfetch";

		};

		interactiveShellInit = ''
			set fish_greeting
			'';
	};

	home.packages = with pkgs; [
		eza
	];
}
