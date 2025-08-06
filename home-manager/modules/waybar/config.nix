{ pkgs, ... }: {
	programs.waybar.settings.mainBar = {

		# Base
		layer = "top";
		position = "top";
		height = 28;
		spacing = 10;
		ipc = true;

		# Placement
		modules-left = [
			"hyprland/workspaces"
		];
		modules-center = [
			"hyprland/window"
		];
		modules-right = [
			"custom/notification"
			"custom/spacer"
			"pulseaudio"
			"custom/spacer"
			"memory"
			"custom/spacer"
			"cpu"
			"custom/spacer"
			"clock"
		];

		# Modules

		"custom/spacer" = {
			tooltip = false;
			format = "|";
		};

		"pulseaudio" = {
			format = "{volume}% {icon} ";
			format-bluetooth = "{volume}% {icon} ";
			format-muted = "";
			scroll-step = 1;
			on-click = "pwvucontrol";
			format-icons = {
				headphone = "";
				hands-free = "";
				headset = "";
				phone = "";
				phone-muted = "";
				portable = "";
				car = "";
				default = [ "" "" ];
			};
		};

		# Hyprland modules

		"hyprland/workspaces" = {
			format = "{name}";
			persistent-workspaces."*" = 9; 
		};

		# Base modules
		"clock" = {
			interval = 60;
			format = "{:%d/%m/%y %H:%M}";
		};

		# Hardware

		"cpu" = {
			interval = 10;
			format = "{usage}%  ";
		};

		"memory" = {
			interval = 30;
			format = "{percentage}%  ";
		};

		# Notificaions

		"custom/notification" = {
			tooltip = false;
			format = "{} {icon} ";
			format-icons = {
				notification = "<span foreground='red'><sup></sup></span>";
				none = "";
				dnd-notification = "<span foreground='red'><sup></sup></span>";
				dnd-none = "";
				inhibited-notification = "<span foreground='red'><sup></sup></span>";
				inhibited-none = "";
				dnd-inhibited-notification = "<span foreground='red'><sup></sup></span>";
				dnd-inhibited-none = "";
			};
			return-type = "json";
			exec-if = "which swaync-client";
			exec = "${pkgs.swaynotificationcenter}/bin/swaync-client -swb";
			on-click = "${pkgs.swaynotificationcenter}/bin/swaync-client -t -sw";
			on-click-right = "${pkgs.swaynotificationcenter}/bin/swaync-client -d -sw";
			escape = true;
		};
	};
}
