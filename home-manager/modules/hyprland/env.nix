{
  wayland.windowManager.hyprland.settings = {
    env = [
      "WLR_DRM_NO_ATOMIC,1"
      "WLR_RENDERER_ALLOW_SOFTWARE,1"
      "WLR_USE_LIBINPUT,1"
      "WLR_NO_HARDWARE_CURSORS,1"
      "XDG_SESSION_TYPE,wayland"
      "XDG_SESSION_DESKTOP,Hyprland"
      "XCURSOR_SIZE,24"
      "QT_QPA_PLATFORM,wayland"
    ];
    
    xwayland = {
      "force_zero_scaling" = true;
      env = [
        "GDK_SCALE,1"
        "XCURSOR_SIZE,24"
      ];
    };
  };
}
