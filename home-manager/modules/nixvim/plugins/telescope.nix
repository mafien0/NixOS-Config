{
	programs.nixvim = {

		plugins.telescope = {
			enable = true;
			extensions = {
				fzf-native.enable = true;
				ui-select.enable = true;
			};
		};

		keymaps = [
			{ mode = "n"; key = "<leader><leader>"; action = "<cmd>Telescope find_files<CR>"; options.desc = "Find files"; }
			{ mode = "n"; key = "<leader>g"; action = "<cmd>Telescope live_grep<CR>"; options.desc = "Live grep"; }
			{ mode = "n"; key = "<leader>d"; action = "<cmd>Telescope diagnostics<CR>"; options.desc = "Diagnostics"; }
		];

	};
}
