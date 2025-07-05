{
	imports = [
		./keymaps.nix
		./lsp.nix
		./mini.nix
		./plugins.nix
	];

	programs.nixvim = {
		enable = true;

		colorschemes.gruvbox = {
			enable = true;
			settings = {
				contrast = "hard";
			};
		};

		opts = {
			tabstop = 2;
			shiftwidth = 2;
			signcolumn = "no";
			relativenumber = true;
			number = true;
			autoindent = true;
			undofile = true;
			formatoptions = "tcqj";
		};

		clipboard = {
			register = "unnamedplus";
		};

		globals = {
			mapleader = "f";
		};

	};
}
