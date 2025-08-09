{
	programs.nixcord = {
		enable = true;
		vesktop.enable = true;

		config = {
			frameless = true;
			themeLinks = [
				"https://raw.githubusercontent.com/mafien0/system24/refs/heads/main/theme/flavors/system24-rose-pine.theme.css"
			];

			plugins = {
				hideAttachments.enable = true; 
				experiments.enable = true;
				callTimer.enable = true;
				fakeNitro.enable = true;
				friendsSince.enable = true;
				imageZoom.enable = true;
				keepCurrentChannel.enable = true;
				mentionAvatars.enable = true;
				noF1.enable = true;
				petpet.enable = true;
				pictureInPicture.enable = true;
				whoReacted.enable = true;
			};

		};
	};
}
