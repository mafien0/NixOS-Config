{ config, ...}: {

	hardware.nvidia = {
		modesetting.enable = true;
		nvidiaSettings = true;
		open = false;
		package = config.boot.kernelPackages.nvidiaPackages.stable;
	};
 
	services.xserver.videoDrivers = ["nvidia"];
	hardware.graphics.enable = true;

	environment.sessionVariables = {
		LIBVA_DRIVER_NAME = "nvidia";
		GBM_BACKEND = "nvidia-drm";
		__GLX_VENDOR_LIBRARY_NAME = "nvidia";
		__GL_GSYNC_ALLOWED = "1";
		__GL_VRR_ALLOWED = "1";
		__VK_LAYER_NV_optimus = "NVIDIA_only";
		NVD_BACKEND = "direct";
	};
}
