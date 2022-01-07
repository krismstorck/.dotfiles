# My dotfiles (Oct 2021)

## Purpose

To document and share my configuration. A more detailed writeup of my macOS enviroment can be found [here.]()

## Contents

### Hammerspoon

* Window management for yabai
* App launcher and other useful keybinds 
 
### iTerm

* [Solarized](<>) - Some brights changed to match zsh Oxide colors
 	
### Neovim

* [NvChad]() - Does not have a Solarized theme (yet)
 
### Sublime Text
 
* [Solarized](<>)
* [JSPrettier]
* [MarkdownEditing](<https://github.com/SublimeText-Markdown/MarkdownEditing>)
 
### spotifyd

* Occasionally the server will disappear from spotify-tui, even though the daemon is still running. Seems to drop out completely after computer sleeps as well.
   
### spotify-tui

* [More Solarized colors for readablity](<https://matthewbilyeu.com/blog/2020-09-19/solarized-light-theme-for-spotify-tui>)

### tmux

* [Solarize color theme tmux configuration](<https://github.com/seebi/tmux-colors-solarized>)
* Using TPM for theme, plugins.
   + [Online Status]

### VS Code

* [Solarized for VS Code]
* [Prettier]
* [Foam]
 
### Ubersicht
   
* [Simple Bar](<>)
   + Simple Bar must have SIP disabled in order for yabai top interact with the spaces widget. 
   + I've pared Simple Bar down by a lot, as the only relevant information I want to see is the battery percentage and time. Ideally I would like to see the system load information as well; RAM and CPU usage along with system tempurature, but I may have to build this myself. 
   
### zsh
 
* [Oxide](<https://github.com/dikiaap/dotfiles>) - Slightly tweaked to minimize line breaks
* Using Oh-My-Zsh for themes, plugins
   + aliases
   fzf
   git
   tmux
   web-search
   + [sublime](<https://github.com/valentinocossar/sublime>)
   + [Meaningful error codes](<https://github.com/cedi/meaningful-error-codes>)
 
## Screenshots


## Notes

I'm what you would call a "junior". There may be glaringly obvious mistakes or omissions. If something is completely wrong, feel free to open an issue. I've tried my best to include source citation when it is not already clear.

Fork and install at your own risk. I can not promise anything works. Here are some more specifics on my equipment and my dev enviroment.

## To Do

- [x] Make apps open on keybind via Hammerspoon
- [ ] Toggle true light/dark mode on keybind via Hammerspoon
- [ ] Install pywal 
- [x] Configure powerline in tmux
- [ ] Unified Solarized color theme on spotify-tui, nvim, ranger.
- [ ] Unified Victor Mono font w/ proper kerning, spacing
- [ ] Revisit spotifyd keychain access
- [ ] Fix/rewrite tmux status bar color scheme
- [ ] Identify what service is causing duplicate naming of system on network