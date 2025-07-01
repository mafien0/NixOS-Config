{ pkgs, ...}: {
  home.packages = with pkgs; [
    hyprpaper
    waypaper
  ];

  home.file = {
    ".config/hypr/hyprpaper.conf".text = "";
  };
  home.activation.copyWaypaperConfig = ''
		target_dir="$HOME/.config/waypaper"

		if [ ! -d "$target_dir" ]; then
			mkdir -p "$target_dir"
		fi

		cp -n ${./config.ini} $HOME/.config/waypaper/config.ini
		chmod 600 $HOME/.config/waypaper/config.ini
  '';
}
