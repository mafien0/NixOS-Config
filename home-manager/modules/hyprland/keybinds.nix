{
  wayland.windowManager.hyprland.settings = {
    "$terminal" = "alacritty";
    "$browser" = "firefox";
    "$menu" = "rofi"; "$explorer" = "nautilus";
    "$calc" = "gnome-calculator";
    "$discord" = "vesktop";

    "$mod" = "SUPER";

    bind = [
			# Basic
      "$mod SHIFT, Q, killactive,"
      "$mod SHIFT, M, exit,"
      "$mod, V, togglefloating,"
      "$mod, F, fullscreen,"

			# Programs
      "$mod, return, exec, $terminal -e tmux"
      "$mod SHIFT, return, exec, $terminal"
      "$mod, B, exec, $browser"
      "$mod, E, exec, $explorer"
      "$mod, T, exec, $calc"
      "$mod, D, exec, $discord"

      "$mod, Z, exec, hyprpicker -a"
      "$mod, P, exec, waypaper"
      "$mod, O, exec, swaylock"

			# Screenshot(grim + slurp)
			"$mod SHIFT, S, exec, ${./screenshot.sh}"
			", Print, exec, grim - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png"

			# Rofi thing
      "$mod, R, exec, $menu -show drun"
      "$mod, U, exec, bemoji"
      "$mod, G, exec, cliphist list | $menu -dmenu | cliphist decode | wl-copy"
      "$mod, Semicolon, exec, ps -ef | rofi -dmenu | awk '{print $2}' | xargs -r kill -9"

      # Move focus with $mod + HJKL(Vim keys) 
      "$mod, H, movefocus, l"
      "$mod, L, movefocus, r"
      "$mod, J, movefocus, d"
      "$mod, K, movefocus, u"

      # Move windows with $mod + CTRL + HJKL(Vim keys)
      "$mod CTRL, H, movewindow, l"
      "$mod CTRL, L, movewindow, r"
      "$mod CTRL, J, movewindow, d"
      "$mod CTRL, K, movewindow, u"

      # Move/resize windows with $mod + LMB/RMB and dragging
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizeactive"

    ]
    ++(
      # workspaces 1-9
      builtins.concatLists (builtins.genList (i:
        let ws = i + 1;
        in [
          "$mod, code:1${toString i}, workspace, ${toString ws}"
          "$mod SHIFT, code:1${toString i}, movetoworkspacesilent, ${toString ws}"
          ]
        )
          9)
      );

    bindm = [
      # Move windows with mouse
      "$mod, mouse:272, movewindow"
      # Resize windows with mouse
      "$mod, mouse:273, resizewindow"
    ];
    binde = [
      # Resize windows with $mod + Shift + HJKL(vim keys)
      "$mod SHIFT, H, resizeactive,-50 0"
      "$mod SHIFT, L, resizeactive,50 0"
      "$mod SHIFT, J, resizeactive,0 -50"
      "$mod SHIFT, K, resizeactive,0 50"
    ];
    bindel = [
      # Laptop multimedia keys for volume and LCD brightness
      ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
      ",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
    ];
    bindl = [
      # Requires playerctl
      ",XF86AudioNext, exec, playerctl next"
      ",XF86AudioPause, exec, playerctl play-pause"
      ",XF86AudioPlay, exec, playerctl play-pause"
      ",XF86AudioPrev, exec, playerctl previous"
    ];
  };
}
