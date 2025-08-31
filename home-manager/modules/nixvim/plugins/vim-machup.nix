{
	programs.nixvim = {
		plugins.vim-matchup = {
			enable = true;
			settings = {
				matchup_matchparen_offscreen.method = "popup";
				matchup_matchparen_deferred = 1;
				matchup_matchparen_hi_surround_always = 1;
			};
		};
	};
}
