{
	imports = [
		./keymaps.nix
		./lsp.nix
		./mini.nix
		./plugins.nix
	];

	stylix.targets.nixvim.enable = true;

	programs.nixvim = {
		enable = true;

		opts = {
			tabstop = 2;
			shiftwidth = 2;
			signcolumn = "no";
			relativenumber = true;
			number = true;
			scrolloff = 10;
			autoindent = true;
			undofile = true;
			formatoptions = "tcqj";
		};

		clipboard = {
			register = "unnamedplus";
		};
	};

	home.sessionVariables = {
		EDITOR = "nvim";
		VISUAL = "nvim";
	};
}
