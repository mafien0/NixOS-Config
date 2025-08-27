{ pkgs, ... }: {
	programs.zsh.enable = true;
	users.defaultUserShell = pkgs.zsh;

	users.users.mafien0 = {
		isNormalUser = true;
		extraGroups = [ "wheel" "input" "networkmanager" "docker" ];
		shell = pkgs.zsh;
	};
}
