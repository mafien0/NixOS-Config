{
	imports = [
		./keymaps.nix
		./lsp.nix
		./mini.nix
		./plugins.nix
	];

	programs.nixvim = {
		enable = true;
		opts = {
			termguicolors = true;
			tabstop = 2; 
			shiftwidth = 2;
			signcolumn = "no";
			relativenumber = true;
			number = true;
			scrolloff = 10;
			autoindent = true;
			undofile = true;
			formatoptions = "tcqj";
			list = true;
		};

		colorschemes.gruvbox = {
			enable = true;
			settings.contrast = "hard";
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
