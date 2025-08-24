{ lib, ... }: {
	programs.alacritty = {
		enable = true;

		settings = {

			general.live_config_reload = true;

			window = {
				padding = { x = 5; y = 5; };
			};

			# No italic fonts
			font = {
				normal.style = lib.mkForce "Medium";
				italic.style = lib.mkForce "Medium";
				bold.style = lib.mkForce "Bold";
				bold_italic.style = lib.mkForce "Bold";
			};

			cursor.style = {
				shape = "Beam";
				blinking = "off";
			};

		};
	};
}
