{ lib, ... }: {
	programs.nixvim = {
		plugins.treesitter = {
			enable = true;
			settings = {
				indent.enable = true;
				highlight.enable = true;
				matchup.enable = lib.mkForce true;
			};
		};
	};
}
