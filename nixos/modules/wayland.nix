{ pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		niri
		alacritty

		swaylock
		swayidle
		swaybg
		swaynotificationcenter
		waypaper
		waybar

		gnome-keyring
		cliphist
		wl-clipboard
		xwayland-satellite

		xdg-desktop-portal-gnome
		xdg-desktop-portal-gtk
		gnome-keyring
	];

	programs.niri.enable = true;

	xdg.portal = {
		enable = true;
		xdgOpenUsePortal = true;
		config = {
			common = {
				default = ["gnome" "gtk"];
				"org.freedesktop.impl.portal.ScreenCast" = "gnome";
				"org.freedesktop.impl.portal.Screenshot" = "gnome";
				"org.freedesktop.impl.portal.RemoteDesktop" = "gnome";
			};
		};
		extraPortals = [
			pkgs.xdg-desktop-portal-gtk
			pkgs.xdg-desktop-portal-gnome
		];
	};
}
