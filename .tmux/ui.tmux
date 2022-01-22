# Will need to create and apply logic to switch "themes" depending on system light/dark mode. For now, they are both in this file; the dark theme is commented out.

# General status bar settings
set -g status on
set -g status-interval 5
set -g status-position bottom
set -g status-justify left
set -g status-right-length 100

# Powerline elements
set -g window-status-separator ""
separator_powerline_leftendcap="\ue0B6"
separator_powerline_left="\uE0B2"
separator_powerline_right="\ue0B4"

# Start windows and panes at 1, not 0
set -g base-index 1
set-window-option -g pane-base-index 1

set -g set-titles on

# Renumber windows after window is closed
set-option -g renumber-windows on

# Stop the windows from renaming themselves
set-option -g allow-rename off

# Solarized light

# Default statusbar colors
# set-option -g status-style fg=#657b83,bg=white #base00 and base2

# Default window title colors
# set-window-option -g window-status-style fg=white,bg=#93a1a1 #base2 and base 1
# set-window-option -g window-status-style dim

# Active window title colors
# set-window-option -g window-status-current-style fg=white,bg=#839496 #base2 and base1
# set-window-option -g window-status-current-style bright

# Pane border
# set-option -g pane-border-style fg=white #base2
# set-option -g pane-active-border-style fg=brightcyan #base1

# Message text
# set-option -g message-style fg=white,bg=#657b83 

# Pane number display
# set-option -g display-panes-active-colour blue #blue
# set-option -g display-panes-colour brightred #orange

# Clock
# set-window-option -g clock-mode-colour green #green

# Bell
# set-window-option -g window-status-bell-style fg=white,bg=red #base2, red

# Window segment settings
# wg_session="#[fg=white, bg=brightwhite]$separator_powerline_leftendcap#[default] #S"
# wg_user_host="#[default]$seperator_powerline_left#[default]#(whoami)#[fg=white,bg=brightwhite]$separator_powerline_right"

# setw -g window-status-format "#[default]$separator_powerline_right#[default] #I:#W #[fg=#93a1a1,bg=white]$separator_powerline_right"
# setw -g window-status-current-format "#[fg=white,nobold]$separator_powerline_right#[default] #I:#W #[fg=#839496,bg=white]$separator_powerline_right"

# Solarized dark

# default statusbar colors
set-option -g status-style fg=#657b83,bg=black #yellow and base02

# default window title colors
set-window-option -g window-status-style fg=#878479,bg=#1b4651 #base0 and default
#set-window-option -g window-status-style dim

# active window title colors
set-window-option -g window-status-current-style bg=#133e49,fg=#446f7a #orange and default
# set-window-option -g window-status-current-style bright

# pane border
set-option -g pane-border-style fg=black #base02
set-option -g pane-active-border-style fg=brightgreen #base01

# message text
set-option -g message-style fg=brightred,bg=black #orange and base01

# pane number display
set-option -g display-panes-active-colour blue #blue
set-option -g display-panes-colour brightred #orange

# clock
set-window-option -g clock-mode-colour green #green

# bell
set-window-option -g window-status-bell-style fg=black,bg=red #base02, red

# Window segment settings
wg_session="#[fg=#59cce2,bg=brightblack]$separator_powerline_leftendcap#[fg=black,bg=#59cce2] #S #[fg=#59cce2,bg=default]$separator_powerline_right"

wg_user_host="#[default]#(whoami)#[default]@#H#[fg=black,bg=brightblack]$separator_powerline_right"

setw -g window-status-format "#[fg=black]$separator_powerline_right#[default] #I:#W #[fg=#1b4651,bg=black]$separator_powerline_right"
setw -g window-status-current-format "#[fg=black]$separator_powerline_right#[default] #I:#W #[bg=black,fg=#133e49]$separator_powerline_right"

# online and offline icon for tmux-online-status
set -g @online_icon "#[fg=limegreen]☺︎#[default]"
set -g @offline_icon "#[fg=brightred]☹︎#[default]"

set -g @cpu_low_fg_color "#[fg=#00ff00]"
set -g @cpu_percentage_format "%5.0f%%" # Add left padding

set -g status-left "$wg_session" 
set -g status-right "#{cpu_percentage} | #{online_status} $wg_user_host"


