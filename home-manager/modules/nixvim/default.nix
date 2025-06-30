{
	imports = [
		./lsp.nix
	];

	programs.nixvim = {
		enable = true;

		colorschemes = {
			catppuccin.enable = true;
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


		plugins = {
			lualine.enable = true;
			web-devicons.enable = true;
			fidget.enable = true;

			treesitter = {
				enable = true;
				settings.indent.enable = true;
			};

			telescope = {
				enable = true;
				extensions = {
					fzf-native.enable = true;
					ui-select.enable = true;
				};
			};
		};

		keymaps = [
			{
				action = "<cmd>Telescope find_files<CR>";
				key = "ff";
				mode = ["n"];
				options.silent = true;
			}

			{
				action = "<cmd>Telescope live_grep<CR>";
				key = "fg";
				mode = ["n"];
				options.silent = true;
			}
			{
				action = "<cmd>diagnostics<CR>";
				key = "fd";
				mode = ["n"];
				options.silent = true;
			}

			{
				action = "<cmd>source %<CR>";
				key = "fr";
				mode = ["n"];
				options.silent = true;
			}
		];
	};
}
