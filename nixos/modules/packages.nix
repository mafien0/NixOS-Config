{ pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		# Desktop apps
		obs-studio
		prismlauncher
		pwvucontrol
		materialgram
		cinny-desktop
		protonvpn-gui
		mpv
		filezilla

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

		# Other
		gcc
		home-manager
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
