{
	programs.nixvim.plugins.mini = {
		enable = true;
		modules = {
			comment.mappings = {
				comment = "<space>c";
				comment_line = "<space>c";
				comment_visual = "<space>c";
				textobject = "<space>c";
			};

			pairs = {
				modes = { insert = true; command = false; terminal = false; };
				skip_next = [
					["%w"]
					["%p"]
				];
				skip_ts = [ "string" ];
				skip_unbalanced = true;
				markdown = true;
			};
		};
	};
}
