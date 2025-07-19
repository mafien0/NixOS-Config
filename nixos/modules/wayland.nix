{ pkgs, ... }: {

	programs.hyprland = {
		enable = true;
		xwayland.enable = true;
		portalPackage = pkgs.xdg-desktop-portal-hyprland;
	};

	environment.systemPackages = with pkgs; [
		alacritty

		grim
		slurp
		swaylock
		swayidle
		swaybg
		swaynotificationcenter
		waypaper
		waybar

		gnome-keyring
		cliphist
		wl-clipboard

		xdg-desktop-portal-hyprland
		xdg-desktop-portal-gtk

		gnome-keyring
	];

	xdg.portal = {
		enable = true;
		xdgOpenUsePortal = true;
		config = {
			common.default = [ "gtk" ];
			hyprland.default = [
				"gtk"
				"hyprland"
			];
		};

		extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
	};
}
