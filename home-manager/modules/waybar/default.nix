{ config, ... }: {
	imports = [
		./config.nix
	];

	programs.waybar = {
		enable = true;
		style = "${./style.css}";
	};

	home.file.".config/waybar/colors.css".text= ''
@define-color background                  #${config.stylix.base16Scheme.base00};
@define-color border                      #${config.stylix.base16Scheme.base03};
@define-color text                        #${config.stylix.base16Scheme.base05};
@define-color ws-focused                  #${config.stylix.base16Scheme.base0A};
@define-color ws-active-text              #${config.stylix.base16Scheme.base05};
@define-color ws-persistent-text          #${config.stylix.base16Scheme.base07};
@define-color ws-urgent                   #${config.stylix.base16Scheme.base08};
	'';
}
