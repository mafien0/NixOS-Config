{
	programs.tmux = {
		enable = true;

		extraConfig = ''
# Fixes
set -as terminal-overrides ",*:RGB"
set -sg escape-time 0
set -g focus-events on

# Start windows and panes at 1, not 0
set -g base-index 1
set -g pane-base-index 1

# Status bar
set-option -g status-position top

# Vim keys
set -g status-keys vi
setw -g mode-keys vi

# Binds
set -g prefix C-a
bind q killp
bind v copy-mode

# Renames
bind-key r command-prompt -I "#W" "rename-window -- '%%'"
bind-key R command-prompt -I "#S" "rename-session -- '%%'"

# Vim pane switching
setw -g mode-keys vi
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

bind -n C-h select-pane -L
bind -n C-j select-pane -D
bind -n C-k select-pane -U
bind -n C-l select-pane -R

# Vim resize panes
bind-key -r H resize-pane -L 1
bind-key -r J resize-pane -D 1
bind-key -r K resize-pane -U 1
bind-key -r L resize-pane -R 1

# Switch windows with alt + number
bind-key -n M-1 select-window -t 1
bind-key -n M-2 select-window -t 2
bind-key -n M-3 select-window -t 3
bind-key -n M-4 select-window -t 4
bind-key -n M-5 select-window -t 5
bind-key -n M-6 select-window -t 6
bind-key -n M-7 select-window -t 7
bind-key -n M-8 select-window -t 8
bind-key -n M-9 select-window -t 9
bind-key -n M-0 select-window -t 10

# Pane splits
unbind '"'
unbind %

bind i split-window -h
bind o split-window -v
		'';
	};
}
