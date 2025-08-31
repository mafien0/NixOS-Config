{ pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		gnome-extension-manager
		dconf-editor

		# Desktop apps
		obs-studio
		telegram-desktop
		bitwarden-desktop
		zapzap
		protonvpn-gui
		mpv
		blockbench
		aseprite
		gimp
		inkscape
		qbittorrent

		# CLI
		btop
		cava
		curl
		fastfetch
		ffmpeg
		fzf
		git
		killall
		lazydocker
		lazygit
		ncdu
		ntfs3g
		progress
		ripgrep
		tree
		unzip
		watch
		wget
		zip
		gh
		sl

		# Other
		home-manager
		steam-run
		gcc
		jdk

		# Prismlauncher
		(prismlauncher.override {
			additionalPrograms = [ ffmpeg ];
			jdks = [ graalvm-ce zulu8 zulu17 zulu ];
		})
	];

	fonts.packages = with pkgs; [
		dina-font
		fira-code
		fira-code-symbols
		liberation_ttf
		mplus-outline-fonts.githubRelease
		nerd-fonts.fira-code
		nerd-fonts.symbols-only
		noto-fonts
		noto-fonts-cjk-sans
		noto-fonts-emoji
		proggyfonts
	];

}
