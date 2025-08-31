{
	programs.nixvim = {

		plugins.bufferline = {
			enable = true;
			settings.options = {
				mode = "tabs";
				diagnostics = "nvim_lsp";
				always_show_bufferline = true;

				close_command = "bdelete! %d";
				right_mouse_command = "bdelete! %d";
				left_mouse_command = "buffer %d";
				middle_mouse_command = null;
			};
		};

		# Tab group
		plugins.which-key.settings.spec = [{ __unkeyed-1 = "<leader>t"; group = "Tab"; icon = "󰓩 "; }];

		keymaps = [
			# Tabs
			{ mode = "n"; key = "<leader>tt"; action = "<Cmd>tabnew<CR>"; options.desc = "New tab"; }
			{ mode = "n"; key = "<leader>tq"; action = "<Cmd>bdelete<CR>"; options.desc = "Close tab"; }

			# Tab Split
			{ mode = "n"; key = "<leader>th"; action = "<Cmd>split<CR>";  options.desc = "Horizontal split"; }
			{ mode = "n"; key = "<leader>tv"; action = "<Cmd>vsplit<CR>"; options.desc = "Vertical split"; }

			# Navigation
			# Ctrl + <hjkl> -> move to <direction split>
			{ mode = "n"; key = "<C-h>"; action = "<Cmd>help<CR>"; options.desc = "Move to left split"; }
			{ mode = "n"; key = "<C-j>"; action = "<C-w>j"; options.desc = "Move to below split"; }
			{ mode = "n"; key = "<C-k>"; action = "<C-w>k"; options.desc = "Move to above split"; }
			{ mode = "n"; key = "<C-l>"; action = "<C-w>l"; options.desc = "Move to right split"; }

			# Ctrl + <num> -> <num> tab
			{ mode = "n"; key = "<C-1>"; action = "<Cmd>BufferLineGoToBuffer 1<CR>"; options.desc = "Go to buffer 1"; }
			{ mode = "n"; key = "<C-2>"; action = "<Cmd>BufferLineGoToBuffer 2<CR>"; options.desc = "Go to buffer 2"; }
			{ mode = "n"; key = "<C-3>"; action = "<Cmd>BufferLineGoToBuffer 3<CR>"; options.desc = "Go to buffer 3"; }
			{ mode = "n"; key = "<C-4>"; action = "<Cmd>BufferLineGoToBuffer 4<CR>"; options.desc = "Go to buffer 4"; }
			{ mode = "n"; key = "<C-5>"; action = "<Cmd>BufferLineGoToBuffer 5<CR>"; options.desc = "Go to buffer 5"; }
			{ mode = "n"; key = "<C-6>"; action = "<Cmd>BufferLineGoToBuffer 6<CR>"; options.desc = "Go to buffer 6"; }
			{ mode = "n"; key = "<C-7>"; action = "<Cmd>BufferLineGoToBuffer 7<CR>"; options.desc = "Go to buffer 7"; }
			{ mode = "n"; key = "<C-8>"; action = "<Cmd>BufferLineGoToBuffer 8<CR>"; options.desc = "Go to buffer 8"; }
			{ mode = "n"; key = "<C-9>"; action = "<Cmd>BufferLineGoToBuffer 9<CR>"; options.desc = "Go to buffer 9"; }
		];
	};
}
