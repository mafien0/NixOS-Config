{
  wayland.windowManager.hyprland.settings = {
    monitor = ",1920x1080@75,auto,1";

    exec-once = [
      "hyprpaper"
      "hyprpanel"
      "waypaper --restore"

      # Set volume to #65%
      "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.65"

      # Clipboard history
      "cliphist wipe"
      "wl-paste --type text --watch cliphist store"
    ];

    general =  {
      "gaps_in" = 5;
      "gaps_out" = 10;
      "gaps_workspaces" = 50;

      "border_size" = 1;

      "col.active_border" = "rgb(b7bdf8)";
      "col.inactive_border" = "rgb(6e738d)";

      "layout" = "dwindle";
    };

    decoration = {
      "rounding" = 10;
      "active_opacity" = 0.97;
      "inactive_opacity" = 0.9;

      shadow = {
        "enabled" = true;
        "range" = 7;
        "render_power" = 3;
        "color" = "rgba(1a1a1aee)";
      };

      blur = {
        "enabled" = true;
        "size" = 3;
        "passes" = 1;

        "vibrancy" = 0.1696;
      };
    };

    animations = {
      "enabled" = true;
      "first_launch_animation" = true;

      bezier = [
        "easeOutQuint,0.23,1,0.32,1"
        "easeInOutCubic,0.65,0.05,0.36,1"
        "linear,0,0,1,1"
        "almostLinear,0.5,0.5,0.75,1.0"
        "quick,0.15,0,0.1,1"
      ];

      animation = [
        "global, 1, 10, default"
        "border, 1, 5.39, easeOutQuint"
        "windows, 1, 4.79, easeOutQuint"
        "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
        "windowsOut, 1, 1.49, linear, popin 87%"
        "fadeIn, 1, 1.73, almostLinear"
        "fadeOut, 1, 1.46, almostLinear"
        "fade, 1, 3.03, quick"
        "layers, 1, 3.81, easeOutQuint"
        "layersIn, 1, 4, easeOutQuint, fade"
        "layersOut, 1, 1.5, linear, fade"
        "fadeLayersIn, 1, 1.79, almostLinear"
        "fadeLayersOut, 1, 1.39, almostLinear"
        "workspaces, 1, 1.94, almostLinear, fade"
        "workspacesIn, 1, 1.21, almostLinear, fade"
        "workspacesOut, 1, 1.94, almostLinear, fade"
      ];
    };

    dwindle = {
      "preserve_split" = true;
    };

    misc = {
      "force_default_wallpaper" = -1;
      "disable_hyprland_logo" = false;
    };

    input = {
      "kb_layout" = [ "us, ru" ];
      "kb_options" = "grp:alt_shift_toggle";
      "follow_mouse" = 1;
      "sensitivity" = 0;
    };
  };
}
