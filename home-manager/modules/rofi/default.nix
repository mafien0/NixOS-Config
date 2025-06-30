{ pkgs, ...}: {

  home.packages = with pkgs; [
    rofi-wayland
    bemoji
  ];

  home.file = {
    ".config/rofi/config.rasi".source = ./config.rasi;
    ".config/rofi/catppuccin-mocha.rasi".source = ./catppuccin-mocha.rasi;
  };
}
