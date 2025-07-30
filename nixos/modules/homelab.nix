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
	services.tailscale.enable = true;

	# SSH
	services.openssh = {
		enable = true;
		ports = [ 22 ];
		settings = {
			PasswordAuthentication = true;
			AllowUsers = null; 
			PermitRootLogin = "prohibit-password";
		};
	};
	networking.firewall.allowedTCPPorts = [ 22 ];
}
