{ pkgs, ...}: {
  home.packages = with pkgs; [
    hyprpaper
    waypaper
  ];

  home.file = {
    ".config/hypr/hyprpaper.conf".text = "";
  };
  home.activation.copyWaypaperConfig = ''
  cp -n ${./config.ini} $HOME/.config/waypaper/config.ini
  chmod 600 $HOME/.config/waypaper/config.ini
  '';
}
