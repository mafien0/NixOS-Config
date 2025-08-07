{
	programs.nixvim = {
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

			neo-tree = {
				enable = true;
				usePopupsForInput = false;
				closeIfLastWindow = true;
				useDefaultMappings = false;
				extraOptions = {
					window = {
						position = "bottom";
						heigh = 15;
						mappings = {
							"<cr>" = "open";
							"e" = "open";
							"a" = "add";
							"d" = "delete";
							"r" = "rename";
							"c" = "copy";
							"m" = "move";
							"q" = "close_window";
						};
					};
				};
			};
		};
	};
}

