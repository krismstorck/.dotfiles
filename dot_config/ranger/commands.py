from ranger.api.commands import Command

class show_image(Command):
    def execute(self):
        import subprocess
        import os
        path = self.fm.selected_files[0]
        
        # Check if pane already exists
        result = subprocess.run(['tmux', 'list-panes', '-F', '#{pane_id}'], 
                              capture_output=True, text=True)
        panes = result.stdout.strip().split('\n')
        
        if len(panes) > 1:
            # Send command to second pane
            subprocess.run(['tmux', 'send-keys', '-t', panes[1], 
                          f'clear && kitty +kitten icat "{path}"', 'Enter'])
        else:
            # Create new pane
            subprocess.run(['tmux', 'split-window', '-h',
                          f'kitty +kitten icat "{path}" && cat'])