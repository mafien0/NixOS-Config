{ pkgs, ... }: {

	# Docker
	environment.systemPackages = with pkgs; [
		docker-compose
	];

	virtualisation.docker = {
		enable = true;
		rootless = {
			enable = true;
			setSocketVariable = true;
		};
	};

	# Tailscale
	nixpkgs.config.packageOverrides = pkgs: {
		tailscale = pkgs.tailscale.overrideAttrs (oldAttrs: {
			doCheck = false;
		});
	};

	# SSH
	services.openssh = {
		enable = true;
		ports = [ 22 ];
		settings = {
			PasswordAuthentication = true;
			UseDns = true;
			AllowUsers = null; 
			PermitRootLogin = "prohibit-password";
		};
	};
	networking.firewall.allowedTCPPorts = [ 22 ];
}
