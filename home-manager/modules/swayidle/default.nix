{ pkgs, ... }: {

	home.packages = with pkgs; [
		swayidle
	];

	home.file = {
		".config/swayidle/config".text =
'' timeout 300 'swaylock -f' '';
	};
}
