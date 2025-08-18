{ pkgs, ... }: {

	environment.systemPackages = with pkgs; [

		# Desktop apps
		obs-studio
		pwvucontrol
		telegram-desktop
		wasistlos
		tutanota-desktop
		element-desktop
		protonvpn-gui
		mpv
		filezilla
		blockbench
		qbittorrent

		# CLI
		btop
		cava
		curl
		fastfetch
		ffmpeg
		file
		fzf
		git
		killall
		lazydocker
		lazygit
		ncdu
		ntfs3g
		progress
		ripgrep
		tmux
		tree
		unzip
		watch
		wget
		zip
		lua
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
