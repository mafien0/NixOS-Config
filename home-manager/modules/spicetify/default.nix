{ inputs, pkgs, ... }: {
	programs.spicetify = let
		spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
	in {
		enable = true;
		enabledExtensions = with spicePkgs.extensions; [
			adblock
			keyboardShortcut
			hidePodcasts
		];
	};
}
