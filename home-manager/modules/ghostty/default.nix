{
	programs.ghostty = {
		enable = true;
		enableFishIntegration = true;
		installVimSyntax = true;

		settings = {
			font-family = "Fira Code";
			font-size = 12;
			font-style = "bold";
			theme = "Adwaita Dark";

			keybind = [
				"alt+q=close_window"
				"alt+c=new_tab"

				"alt+i=new_split:right"
				"alt+o=new_split:down"

				"ctrl+h=goto_split:left"
				"ctrl+j=goto_split:down"
				"ctrl+k=goto_split:up"
				"ctrl+l=goto_split:right"

			];

		};
	};
}
