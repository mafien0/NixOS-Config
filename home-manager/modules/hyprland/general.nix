{ pkgs, ... }: {
	wayland.windowManager.hyprland.settings = {
		monitor = ",1920x1080@75,auto,1";

		exec-once = [
			"${pkgs.waybar}/bin/waybar"
			"${pkgs.swaynotificationcenter}/bin/swaync"
			"${pkgs.waypaper}/bin/waypaper --restore"

			# Set volume to #65%
			"sleep 4 && ${pkgs.wireplumber}/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.64"
			"sleep 5 && ${pkgs.wireplumber}/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.65"

			# Clipboard history
			"${pkgs.cliphist}/bin/cliphist wipe"
			"${pkgs.wl-clipboard}/bin/wl-paste --type text --watch ${pkgs.cliphist}/bin/cliphist store"
		];

		general =  {
			"gaps_in" = 5;
			"gaps_out" = 10;
			"gaps_workspaces" = 50;

			"border_size" = 2;

			"col.active_border" = "rgb(d79921)";
			"col.inactive_border" = "rgb(282828)";

			"layout" = "dwindle";
		};

		decoration = {
			"rounding" = 0;
			"active_opacity" = 1;
			"inactive_opacity" = 1;

			shadow = {
				"enabled" = true;
				"range" = 7;
				"render_power" = 3;
				"color" = "rgba(1a1a1aee)";
			};
		};

		animations = {
			"enabled" = true;
			"first_launch_animation" = true;

			bezier = [
				"easeOutQuint,0.23,1,0.32,1"
				"easeInOutCubic,0.65,0.05,0.36,1"
				"linear,0,0,1,1"
				"almostLinear,0.5,0.5,0.75,1.0"
				"quick,0.15,0,0.1,1"
			];

			animation = [
				"global, 1, 10, default"
				"border, 1, 5.39, easeOutQuint"
				"windows, 1, 4.79, easeOutQuint"
				"windowsIn, 1, 4.1, easeOutQuint, popin 87%"
				"windowsOut, 1, 1.49, linear, popin 87%"
				"fadeIn, 1, 1.73, almostLinear"
				"fadeOut, 1, 1.46, almostLinear"
				"fade, 1, 3.03, quick"
				"layers, 1, 3.81, easeOutQuint"
				"layersIn, 1, 4, easeOutQuint, fade"
				"layersOut, 1, 1.5, linear, fade"
				"fadeLayersIn, 1, 1.79, almostLinear"
				"fadeLayersOut, 1, 1.39, almostLinear"
				"workspaces, 1, 1.94, almostLinear, fade"
				"workspacesIn, 1, 1.21, almostLinear, fade"
				"workspacesOut, 1, 1.94, almostLinear, fade"
			];
		};

		dwindle = {
			"preserve_split" = true;
		};

		misc = {
			"force_default_wallpaper" = -1;
			"disable_hyprland_logo" = false;
		};

		input = {
			"kb_layout" = [ "us, ru" ];
			"kb_options" = "grp:alt_shift_toggle,caps:escape";
			"follow_mouse" = 1;
			"sensitivity" = 0;
		};
	};
}
