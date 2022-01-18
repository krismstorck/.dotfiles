# Will need to create and apply logic to switch "themes" depending on system light/dark mode. For now, they are both in this file; the dark theme is commented out.

# General status bar settings
set -g status on
set -g status-interval 5
set -g status-position bottom
set -g status-justify left
set -g status-right-length 50

# Default statusbar colors
set-option -g status-style fg=#657b83,bg=white #base00 and base2

# Default window title colors
set-window-option -g window-status-style fg=white,bg=#93a1a1 #base2 and base 1
#set-window-option -g window-status-style dim

# Active window title colors
set-window-option -g window-status-current-style fg=white,bg=#839496 #base2 and base1
#set-window-option -g window-status-current-style bright

# Pane border
set-option -g pane-border-style fg=white #base2
set-option -g pane-active-border-style fg=brightcyan #base1

# Message text
set-option -g message-style fg=white,bg=#657b83 

# Pane number display
set-option -g display-panes-active-colour blue #blue
set-option -g display-panes-colour brightred #orange

# Clock
set-window-option -g clock-mode-colour green #green

# Bell
set-window-option -g window-status-bell-style fg=white,bg=red #base2, red

# Powerline elements
set -g window-status-separator ""
separator_powerline_leftendcap="\ue0B6"
separator_powerline_left="\uE0B2"
separator_powerline_right="\ue0B4"

# Window segment settings
wg_session="#[fg=white, bg=brightwhite]$separator_powerline_leftendcap#[default] #S"
wg_user_host="#[default]#(whoami)#[default]@#H#[fg=white,bg=brightwhite]$separator_powerline_right"

setw -g window-status-format "#[default]$separator_powerline_right#[default] #I:#W #[fg=#93a1a1,bg=white]$separator_powerline_right"
setw -g window-status-current-format "#[fg=white,nobold]$separator_powerline_right#[default] #I:#W #[fg=#839496,bg=white]$separator_powerline_right"






