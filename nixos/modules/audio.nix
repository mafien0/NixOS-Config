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

	hardware.bluetooth = {
		enable = true;
		powerOnBoot = true;
		settings = {
			Policy.AutoEnable = true;
			General = {
				Experimental = true;
				FastConnectable = true;
			};
		};
	};

	environment.systemPackages = with pkgs; [
		paprefs
		pasystray
		playerctl
	];
}
