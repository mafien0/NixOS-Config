{
	programs.nixvim = {

		plugins.neo-tree = {
			enable = true;
			usePopupsForInput = false;
			closeIfLastWindow = true;
			useDefaultMappings = false;
			extraOptions.window = {
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

		keymaps = [{ mode = "n"; key = "<leader>e"; action = "<cmd>Neotree focus toggle<CR>"; options.desc = "Explorer"; }];
	};
}
