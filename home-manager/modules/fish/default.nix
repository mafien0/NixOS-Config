{ pkgs, ...}: {

	programs.fish = {
		enable = true;
		shellAliases = {
			nrs = "sudo nixos-rebuild switch --flake ~/nix";
			nrb = "sudo nixos-rebuild boot --flake ~/nix";
			hms = "home-manager switch --flake ~/nix";

      v = "nvim";
      vi = "nvim";
      vim = "nvim";
      
      ls = "eza --icons=auto --classify --group-directories-first --header --time-style=long-iso";
      l = "eza -la --icons=auto --classify --group-directories-first --header --time-style=long-iso";
      lt = "eza --tree --icons=auto --classify --group-directories-first --header --time-style=long-iso";

      die =  "shutdown now";
      c = "clear";
      ff = "fastfetch";

		};

    interactiveShellInit = ''
      set fish_greeting
      '';
	};
  catppuccin.fish = {
    enable = true;
    flavor = "mocha";
  };

  home.packages = with pkgs; [
    eza
  ];
}
