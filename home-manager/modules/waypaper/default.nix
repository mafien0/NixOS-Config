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
		wallpaper_dir="$HOME/Pictures/Wallpapers"

		if [ ! -d "$target_dir" ]; then
			mkdir -p "$target_dir"
		fi

		if [ ! -d "$wallpaper_dir" ]; then
			mkdir -p "$wallpaper_dir"
		fi


		if [ ! -f "$wallpaper_dir"/wallpaper.jpg ]; then
			cp ${./wallpaper.jpg} "$wallpaper_dir"/wallpaper.jpg
		fi

		cp -n ${./config.ini} $HOME/.config/waypaper/config.ini
		chmod 600 $HOME/.config/waypaper/config.ini
	'';
}
