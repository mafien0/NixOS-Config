# Keybinds
{
	dconf.settings = {

		"org/gnome/desktop/wm/keybindings" = {
			close =                   ["<Super><Shift>q"];
			toggle-maximized =        ["<Super>f"];
			minimize =                ["<Super>d"];
			switch-input-source =     ["<Shift><Alt>"];
			switch-windows =          ["<Alt>Tab"];
			switch-windows-backward = ["<Alt><Shift>Tab"];

			# Workspaces
			switch-to-workspace-1 =   ["<Super>1"];
			switch-to-workspace-2 =   ["<Super>2"];
			switch-to-workspace-3 =   ["<Super>3"];
			switch-to-workspace-4 =   ["<Super>4"];
			switch-to-workspace-5 =   ["<Super>5"];
			move-to-workspace-1 =     ["<Super><Shift>1"];
			move-to-workspace-2 =     ["<Super><Shift>2"];
			move-to-workspace-3 =     ["<Super><Shift>3"];
			move-to-workspace-4 =     ["<Super><Shift>4"];
			move-to-workspace-5 =     ["<Super><Shift>5"];

			activate-window-menu =    [];
			move-to-monitor-down =    [];
			move-to-monitor-left =    [];
			move-to-monitor-right =   [];
			move-to-monitor-up =      [];
			move-to-workspace-down =  [];
			move-to-workspace-up =    [];
			unmaximize =              [];
		};

		"org/gnome/shell/keybindings" = {
			switch-to-application-1 = [];
			switch-to-application-2 = [];
			switch-to-application-3 = [];
			switch-to-application-4 = [];
			switch-to-application-5 = [];
			switch-to-application-6 = [];
			switch-to-application-7 = [];
			switch-to-application-8 = [];
			switch-to-application-9 = [];
		};

		# Custom keybinds

		# Enable
		"org/gnome/settings-daemon/plugins/media-keys".custom-keybindings = [
			"/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" # Firefox
			"/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" # Ghostty
			"/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" # Nautilus
		];

		# Super+b open firefox
		"org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
			binding = "<Super>b";
			command = "firefox";
			name = "Open Browser";
		};

		# Super+Enter open ghostty
		"org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
			binding = "<Super>Return";
			command = "ghostty";
			name = "Open Terminal";
		};

		# Super+e open nautilus
		"org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
			binding = "<Super>e";
			command = "nautilus";
			name = "Open File Manager";
		};
	};
}
