{ pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		gnome-extension-manager
		dconf-editor

		# Desktop apps
		galaxy-buds-client
		logseq
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
		dig
		nmap
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
		altserver-linux
		libimobiledevice
		home-manager
		steam-run
		gcc
		jdk

		# Obs
		obs-studio
		obs-studio-plugins.obs-pipewire-audio-capture

		# Prismlauncher
		(prismlauncher.override {
			additionalPrograms = [ ffmpeg ];
			jdks = [ graalvm-ce zulu8 zulu17 zulu ];
		})

	];


	# Steam
	programs.steam = {
		enable = true;
		remotePlay.openFirewall = true;
		dedicatedServer.openFirewall = true;
	};


	# Alt server
	services.usbmuxd.enable = true;

	# Fonts
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
