{
	programs.nixvim = {
		keymaps = [
			# Telescope
			{
				action = "<cmd>Telescope find_files<CR>";
				key = "<space><space>";
				mode = ["n"];
				options.silent = true;
			}

			{
				action = "<cmd>Telescope live_grep<CR>";
				key = "<space>g";
				mode = ["n"];
				options.silent = true;
			}

			{
				action = "<cmd>Telescope diagnostics<CR>";
				key = "<space>d";
				mode = ["n"];
				options.silent = true;
			}

			# Neo-tree
			{
				action = "<cmd>Neotree toggle<CR>";
				key = "<space>e";
				mode = ["n"];
				options.silent = true;
			}

			# Sourcing file
			{
				action = "<cmd>source %<CR>";
				key = "<space>r";
				mode = ["n"];
				options.silent = true;
			}
		];
	};
}
