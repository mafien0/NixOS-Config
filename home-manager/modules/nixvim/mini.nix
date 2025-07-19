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

			indentscope = {
				symbol = "╎";
			};
		};
	};
}
