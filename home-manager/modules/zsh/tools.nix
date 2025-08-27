{
	programs = {

		# ls replacement
		eza = {
			enable = true;
			enableZshIntegration = true;
		};

		# cd replacement
		zoxide = {
			enable = true;
			enableZshIntegration = true;
		};

	};

	programs.zsh.shellAliases = {
		# Eza(ls)
		ls = "eza --icons=auto --classify --group-directories-first --header --time-style=long-iso";
		l = "eza -la --icons=auto --classify --group-directories-first --header --time-style=long-iso";
		lt = "eza --tree --icons=auto --classify --group-directories-first --header --time-style=long-iso";

		# Zoxide(cd)
		cd = "z";
	};
}
