{ pkgs, ... } : {

	home.packages = with pkgs; [
		tmux
	];

	home.file = {
		".tmux.conf".source = ./.tmux.conf;
	};

	home.activation.tmuxSourceFile = ''
		${pkgs.tmux}/bin/tmux source-file "$HOME/.tmux.conf"
	'';
}
