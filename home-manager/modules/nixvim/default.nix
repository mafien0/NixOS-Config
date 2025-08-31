{ pkgs, ... }: {
	imports = [
		./plugins
	];

	programs.nixvim = {
		enable = true;
		opts = {
			termguicolors = true;
			tabstop = 2; 
			shiftwidth = 2;
			signcolumn = "no";
			relativenumber = true;
			number = true;
			scrolloff = 10;
			autoindent = true;
			undofile = true;
			formatoptions = "tcqj";
			list = true;
		};

		# <leader> = <space>
		globals = {
			mapleader = " ";
			maplocalleader = " ";
		};

		# Adwaita color scheme
		extraPlugins = [ pkgs.vimPlugins.adwaita-nvim ];
		colorscheme = "adwaita";

		extraConfigLua = ''
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if client then
						client.server_capabilities.semanticTokensProvider = nil
					end
				end,
			})
			'';

		clipboard = {
			register = "unnamedplus";
		};
	};

	home.sessionVariables = {
		EDITOR = "nvim";
		VISUAL = "nvim";
	};
}
