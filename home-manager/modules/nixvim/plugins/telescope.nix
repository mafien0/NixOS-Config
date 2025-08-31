{
	programs.nixvim = {

		plugins.telescope = {
			enable = true;
			extensions = {
				fzf-native.enable = true;
				ui-select.enable = true;
			};
		};

		plugins.which-key.settings.spec = [{ __unkeyed-2 = "<leader>f"; group = "Fuzzy find"; icon = " "; }];

		keymaps = [
			{ mode = "n"; key = "<leader><leader>"; action = "<cmd>Telescope find_files<CR>"; options.desc = "Find files"; }
			{ mode = "n"; key = "<leader>fg"; action = "<cmd>Telescope live_grep<CR>"; options.desc = "Live grep"; }
			{ mode = "n"; key = "<leader>fd"; action = "<cmd>Telescope diagnostics<CR>"; options.desc = "Diagnostics"; }
		];

	};
}
