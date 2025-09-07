{
	programs.nixvim = {
		lsp.servers = {
			bashls.enable = true;         # Bash
			clangd.enable = true;         # C/C++
			cssls.enable = true;          # CSS
			jsonls.enable = true;         # Json
			lua_ls.enable = true;         # Lua
			markdown_oxide.enable = true; # Markdown
			nil_ls.enable = true;         # NIX
			pyright.enable = true;        # Python
			yamlls.enable = true;         # Yaml
		};

		plugins.lsp = {
			enable = true;
			inlayHints = true;
		};

		keymaps = [
			{ mode = "n"; key = "K"; action = "<cmd>lua vim.lsp.buf.hover()<CR>"; options.desc = "Hover info"; }
			{ mode = "n"; key = "<leader>ld"; action = "<cmd>lua vim.lsp.buf.definition()<CR>"; options.desc = "Go to definition"; }
			{ mode = "n"; key = "<leader>lr"; action = "<cmd>lua vim.lsp.buf.references()<CR>"; options.desc = "Find references"; }
			{ mode = "n"; key = "<leader>lr"; action = "<cmd>lua vim.lsp.buf.rename()<CR>"; options.desc = "Rename symbol"; }
		];
	};
}
