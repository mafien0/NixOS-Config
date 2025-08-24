{ pkgs, ... }: {
  services.xserver = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  environment.systemPackages = with pkgs; [
    gnomeExtensions.appindicator
    cliphist
    wl-clipboard

    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-bad
    gst_all_1.gst-plugins-ugly
    gst_all_1.gst-libav

		xdg-desktop-portal-gnome
		xdg-desktop-portal-gtk
  ];

  services.udev.packages = [ pkgs.gnome-settings-daemon ];
  services.gvfs.enable = true;
  services.dbus.enable = true;
  programs.dconf.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
    ];
    config = {
      common.default = [ "gnome" "gtk" ];
      gnome = {
        default = [ "gnome" "gtk" ];
        "org.freedesktop.impl.portal.Screenshot" = [ "gnome" ];
        "org.freedesktop.impl.portal.ScreenCast" = [ "gnome" ];
      };
    };
  };

  environment.sessionVariables = {
    GTK_USE_PORTAL = "1";
    GDK_BACKEND = "wayland,x11";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    ELECTRON_OZONE_PLATFORM_HINT = "wayland";
    XDG_SESSION_TYPE = "wayland";
  };

  xdg.mime.defaultApplications = {
    "text/html" = "firefox.desktop";
    "image/*" = "eog.desktop";
    "video/*" = "mpv.desktop";
    "inode/directory" = "org.gnome.Nautilus.desktop";
  };
}
