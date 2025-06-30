{
  imports = [
    ./modules/packages.nix
    ./modules/wayland.nix
    ./modules/graphics.nix
    ./modules/bootloader.nix
    ./modules/audio.nix
    ./modules/shell.nix
    ./modules/user.nix
    ./modules/cleanup.nix
    ./modules/gnomeapps.nix
  ];
}
