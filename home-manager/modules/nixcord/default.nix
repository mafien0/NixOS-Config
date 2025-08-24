{
	programs.nixcord = {
		enable = true;
		vesktop.enable = true;

		config.plugins = {
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
}
