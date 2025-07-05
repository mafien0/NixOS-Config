{
	programs.nixvim = {
		keymaps = [
			# Telescope
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
				action = "<cmd>Telescope diagnostics<CR>";
				key = "fd";
				mode = ["n"];
				options.silent = true;
			}

			# Neo-tree
			{
				action = "<cmd>Neotree toggle<CR>";
				key = "fe";
				mode = ["n"];
				options.silent = true;
			}

			# Sourcing file
			{
				action = "<cmd>source %<CR>";
				key = "fr";
				mode = ["n"];
				options.silent = true;
			}
		];
	};
}
