{ config, ...}: {
  hardware.nvidia = {
    modesetting.enable = true;
    nvidiaSettings = true;
    open = false;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    powerManagement = {
			enable = true;
			finegrained = false;
		};
  };

	boot.kernelParams = [
		"nvidia.NVreg_PreserveVideoMemoryAllocations=1"
		"nvidia.NVreg_TemporaryFilePath=/var/tmp"
	];

	systemd.tmpfiles.rules = [
		"d /var/tmp 1777 root root 10d"
	];
 
  services.xserver.videoDrivers = ["nvidia"];
  hardware.graphics.enable = true;

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "nvidia";
    GBM_BACKEND = "nvidia-drm";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
  };
}
