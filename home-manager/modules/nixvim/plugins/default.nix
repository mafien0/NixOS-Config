{
	imports = [
		./lsp.nix
		./mini.nix
		./neo-tree.nix
		./tabs.nix
		./telescope.nix
		./treesitter.nix
		./vim-machup.nix
	];
	programs.nixvim = {
		plugins = {
			lualine.enable = true;
			web-devicons.enable = true;
			fidget.enable = true;
		};
	};
}

