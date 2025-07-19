{pkgs, ...}: {

	imports = [
		./general.nix
		./keybinds.nix
		./env.nix
		./windowrules.nix
	];

# hyprland
	wayland.windowManager.hyprland = {
		enable = true;
	};
}
