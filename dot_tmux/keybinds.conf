# Change prefix key to C-a
unbind C-b
set -g prefix C-a

# Split panes using pipes
unbind %  
unbind '"'
bind | split-window -h -c "#{pane_current_path}"
bind _ split-window -v -c "#{pane_current_path}"

# Vim mode
setw -g mode-keys vi

bind-key -T copy-mode-vi 'v' send -X begin-selection
bind-key -T copy-mode-vi 'y' send -X copy-pipe "reattach-to-user-namespace pbcopy"

# Move between panes
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# Navigate between windows
bind -n M-j previous-window
bind -n M-k next-window

# Panel resizing
bind-key -r H resize-pane -L "5"
bind-key -r J resize-pane -D "5"
bind-key -r K resize-pane -U "5"
bind-key -r L resize-pane -R "5"

# Create new window
unbind w  #DEFAULT KEY: change current window interactively
bind w new-window -c "#{pane_current_path}"

# View all sessions
bind S choose-session