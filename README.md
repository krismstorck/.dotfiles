# My dotfiles (Jan 2022)

## Purpose

To document and share my configuration. A more detailed writeup of my macOS enviroment can be found [here.](~/restarting-clean-and-solarized)

## Contents

### [Hammerspoon](https://www.hammerspoon.org)

* Window management for yabai
* App launcher and other useful [keybinds.](~/keybinds.md)

### Terminal and prompt


* [Solarized is a default theme for iTerm2.](https://github.com/gnachman/iTerm2/commit/7edcec0ffbc85c1b913fd4d19dafd01a116ab300) 
* [Oh-my-zsh](https://ohmyz.sh) with [oxide](https://github.com/dikiaap/dotfiles/blob/master/.oh-my-zsh/themes/oxide.zsh-theme) prompt modifed by me.

   +  [aliases](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/aliases)
   +  [fzf](https://github.com/unixorn/fzf-zsh-plugin) - 
   +  [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
   +  [tmux](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux)
   +  [web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search)
   +  [Meaningful error codes](<https://github.com/cedi/meaningful-error-codes>)
   +  [sublime](https://github.com/valentinocossar/sublime) - Opens file in existing Sublime window, if there is one open
   
* [tmux solarized theme for tmux](https://github.com/seebi/tmux-colors-solarized) modified by me.

   + [auto-dark-mode]()
   + [copycat](https://github.com/tmux-plugins/tmux-copycat)
   + [online-status](https://github.com/tmux-plugins/tmux-online-status)
   + [prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight)
   + [sidebar](https://github.com/tmux-plugins/tmux-sidebar)
   + [yank](https://github.com/tmux-plugins/tmux-yank)
   

### CLI utilities

* [basictex](https://www.tug.org/mactex/morepackages.html)
* [exa](https://the.exa.website)
* [NvChad](https://github.com/NvChad/NvChad) for [neovim](https://neovim.io). Theme created by me.
* [spotify-tui](https://github.com/Rigellute/spotify-tui) with [Solarized](https://matthewbilyeu.com/blog/2020-09-19/solarized-light-theme-for-spotify-tui) and [spotifyd](https://github.com/Spotifyd/spotifyd) for an Electron-less Spotify exerperience. 
* [zenith](https://github.com/bvaisvil/zenith) - system monitoring
* [wisdom-tree](https://github.com/HACKER097/wisdom-tree) - pomodoro timer
* [yabai](https://github.com/koekeishiya/yabai) - window manager based on bsp
* [pandoc](https://pandoc.org)
* [ranger](https://github.com/ranger/ranger)

* [fzf](https://github.com/junegunn/fzf/)
* [ffmpeg](https://ffmpeg.org)
* [youtube-dl](https://github.com/ytdl-org/youtube-dl)

### VS Code

* [Solarized for VS Code]()
* [Prettier]()

### Sublime Text

* [Solarized for Sublime Text]()
* [A File Icon](https://github.com/SublimeText/AFileIcon)
* [AppleScript Extensions](https://github.com/idleberg/sublime-applescript)
* [JsPrettier](https://github.com/jonlabelle/SublimeJsPrettier)
* [MarkdownEditing](https://github.com/SublimeText-Markdown/MarkdownEditing)
* [MarkdownPreview](https://github.com/facelessuser/MarkdownPreview)
* [WordCount](https://github.com/titoBouzout/WordCount)

### Ubersicht
   
* [Simple Bar](<>)

## Screenshots

## Notes

Install at your own risk. No, there is no script (yet)

## To Do

* System
   - [ ] Remove ugly, faint, single pixel border that shows when using a blue/purple dark mode theme. 
   - [ ] Create setup.sh to quickly deploy System Preferences
   - [ ] Custom icons
   
* Hammerspoon
   - [ ] Make all keybind/hyper key code blocks their own Lua script, and call it from init.lua 
   - [x] Change open application logic to open application/or focus.
      + [ ] 1/17/22: still does not act consistently when recalling windows.  
   - [ ] Add keybind support for AppleScripts, bash scripts

* yabai
   - [ ] Despite having SIP disabled, yabai, and by extension, simple-bar, does not work entirely as expected. I can not manipulate spaces with simple-bar. yabai meanwhile is inconsistent with application and space focus.
      + I am running an outdated, forked version of yabai that pre-dates the addition of offical M1 support. **This can be resolved when I do a fresh system install of macOS Monterey...maybe**
      + There may be a conflict with my configuration.
      + There may be a conflict with my Hammerspoon configuration.
   - [ ] Try out SketchyBar, as it does not rely on Ubersicht to pass through yabai's events for Space management. 

* spotifyd
   - [ ] If daemon is inactive, disappers from spotify-tui every time system hibernates and seems to be creating duplicate hosts on the local network when it wakes up.
      + [ ] spotifyd should be running as a service from [homebase]() anyway, so move it there
   - [ ] Put username and password behind secrets.sh

* Terminal
   - [ ] Create install.sh to quickly deploy brew, ruby, python, npm  enviroments and packages 
   - [ ] Other terminal emulators may be worth trying - kitty?
   - [ ] Put sensitive data in secrets.sh