{ config, pkgs, ... }:
# Hyprland specific env stored in home-manager/configs/hypr/env.conf
{
  environment.sessionVariables = {
    # NVIDIA Specific 
    LIBVA_DRIVER_NAME = "nvidia";
    GBM_BACKEND = "nvidia-drm";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    __GL_GSYNC_ALLOWED = "1";
    __GL_VRR_ALLOWED = "1";
    __VK_LAYER_NV_optimus = "NVIDIA_only";
    NVD_BACKEND = "direct";

    # General Wayland Toolkit Backends 
    GDK_BACKEND = "wayland,x11";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    QT_QPA_PLATFORMTHEME = "qt5ct";

    # Application Specific
    MOZ_ENABLE_WAYLAND = "1";
    MOZ_DISABLE_RDD_SANDBOX = "1";
    MOZ_DBUS_REMOTE = "1";
    NIXOS_OZONE_WL = "1";
    PROTON_ENABLE_NGX_UPDATER = "1";
  };
}
