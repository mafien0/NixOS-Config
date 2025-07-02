{
	programs.nixvim.plugins.mini = {
		enable = true;
		modules = {

			comment.mappings = {
				comment = "fc";
				comment_line = "fc";
				comment_visual = "fc";
				textobject = "fc";
			};

			indentscope = {
				symbol = "╎";
			};
		};
	};
}
