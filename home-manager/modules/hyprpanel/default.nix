{ pkgs, ...}: {
  programs.hyprpanel.package = hyprpanel.packages.${pkgs.system}.default;
}
