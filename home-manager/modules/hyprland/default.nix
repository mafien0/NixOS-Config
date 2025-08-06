{ pkgs, ... }: {

	imports = [
		./general.nix
		./keybinds.nix
		./env.nix
		./windowrules.nix
	];

	stylix.targets.hyprland.enable = true;

# hyprland
	wayland.windowManager.hyprland = {
		enable = true;
	};

	home.sessionVariables = {
		NIXOS_OZONE_WL = 1;
		MOZ_ENABLE_WAYLAND = 1;
		XDG_CURRENT_DESKTOP = "Hyprland";
		XDG_SESSION_DESKTOP = "Hyprland";
		XDG_SESSION_TYPE = "wayland";
		GDK_BACKEND = "wayland,x11";
		QT_QPA_PLATFORM = "wayland;xcb";
	};

	xdg.portal = {
		enable = true;
		xdgOpenUsePortal = true;
		config = {
			common.default = [ "gtk" "hyprland" ];
			hyprland.default = [ "gtk" "hyprland" ];
		};
		extraPortals = with pkgs; [
			xdg-desktop-portal-gtk
			xdg-desktop-portal-hyprland
		];
	};
}
