{ pkgs, ... }: {

	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
		wireplumber.enable = true;
	};

	services.pulseaudio.enable = false;
	hardware.alsa.enablePersistence = true;
	security.rtkit.enable = true;

	environment.systemPackages = with pkgs; [
		paprefs
		pasystray
		playerctl
	];
}
