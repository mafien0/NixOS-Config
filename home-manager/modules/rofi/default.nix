{ pkgs, config, ...}: {

	home.packages = with pkgs; [
		rofi-wayland
	];

	stylix.targets.rofi.enable = true;
	home.file.".config/rofi/config.rasi".source = ./config.rasi;

	home.file.".config/rofi/theme.rasi".text= ''
* {
    highlight: bold italic;
    scrollbar: true;

    /* Theme colors */
    background:                  #${config.stylix.base16Scheme.base00};
    background-alt:              #${config.stylix.base16Scheme.base01};
    foreground:                  #${config.stylix.base16Scheme.base05};
    foreground-alt:              #${config.stylix.base16Scheme.base06};
    border:                      #${config.stylix.base16Scheme.base03};
		active:                      #${config.stylix.base16Scheme.base0A};
		urgent:                      #${config.stylix.base16Scheme.base08};


    separatorcolor:              @border;
    scrollbar-handle:            @border;

    normal-background:           @background;
    normal-foreground:           @foreground;
    alternate-normal-background: @background-alt;
    alternate-normal-foreground: @foreground;
    selected-normal-background:  @active;
    selected-normal-foreground:  @background;

    active-background:           @active;
    active-foreground:           @background;
    alternate-active-background: @active-background;
    alternate-active-foreground: @active-foreground;
    selected-active-background:  @active;
    selected-active-foreground:  @active-foreground;

    urgent-background:           @urgent;
    urgent-foreground:           @background;
    alternate-urgent-background: @urgent-background;
    alternate-urgent-foreground: @urgent-foreground;
    selected-urgent-background:  @urgent;
    selected-urgent-foreground:  @urgent-foreground;
}
		'';
}
