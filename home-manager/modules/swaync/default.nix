{ config, ... }: {
	imports = [
		./config.nix
	];

	services.swaync = {
		enable = true;
		style = "${./style.css}";
	};

	home.file.".config/swaync/colors.css".text = ''
@define-color background                #${config.stylix.base16Scheme.base00};
@define-color border                    #${config.stylix.base16Scheme.base03};
@define-color text                      #${config.stylix.base16Scheme.base05};
@define-color background-hover          #${config.stylix.base16Scheme.base01};
@define-color cc-button                 #${config.stylix.base16Scheme.base01};
@define-color cc-button-hover           #${config.stylix.base16Scheme.base02};
@define-color switch-checked            #${config.stylix.base16Scheme.base0A};
	'';
}
