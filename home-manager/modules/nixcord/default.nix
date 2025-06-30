{
  programs.nixcord = {
    enable = true;
    vesktop.enable = true;

    config = {
      frameless = true;
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
        readAllNotificationsButton.enable = true;
        whoReacted.enable = true;
      };
      themeLinks = [
        "https://catppuccin.github.io/discord/dist/catppuccin-mocha.theme.css"
      ];
    };
  };
}
