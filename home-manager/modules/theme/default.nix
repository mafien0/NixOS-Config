{ lib, ... }: {
	imports = [
    ./cursor.nix
    ./gtk.nix
    ./qt5ct.nix
	];

  catppuccin = lib.mkForce {
    flavor = "mocha";
    enable = true;
  };
}
