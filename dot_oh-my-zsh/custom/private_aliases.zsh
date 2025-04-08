#!/usr/bin/env zsh

# Reload configs
alias rlzsh="source ~/.zshrc"
alias rltmux="tmux source-file .tmux/.tmux.conf"

# Renaming some essential functions
alias l="COLUMNS=60 eza -bghHliS --all --grid --git --sort=ext --color=always --group-directories-first --icons --color-scale" # I know this is excessive but I need it
alias c="clear"
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias vi="nvim"
alias vim="nvim"
alias python="python3"
alias pip="pip3"
alias gpt-cli="~/.local/bin/gpt"

alias btw="bugwarrior-pull"
alias tt="taskwarrior-tui"
alias cld='gpt-cli --model claude-3-5-sonnet-latest'

# Better directory navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# Quicker utility access
alias hole="ssh pi@10.1.10.6" # Pi-hole
alias mm="ssh kris@10.1.10.5" # MagicMirror

# Quick file access
alias .hs="nvim ~/.hammerspoon/init.lua" # Hammerspoon config
alias .nvim="nvim ~/.config/nvim/custom/chadrc.lua" # Nvchad config
alias .readme="nvim ~/.dotfiles/README.md"
alias .tmux="nvim .tmux/tmux.conf" # Tmux config
alias etask="nvim .taskrc" # Taskwarrior config
# alias dotyabai="nvim ~/.yabairc" # yabai config
alias dotzfun="nvim ~/.oh-my-zsh/custom/functions.zsh"
alias dotzsh="nvim ~/.zshrc" # zsh config
alias ealias="nvim ~/.oh-my-zsh/custom/aliases.zsh" # Personal zsh aliases
alias edefaults="nvim ~/.dotfiles/scripts/defaults.sh" # System preferences
alias keys="st ~/.dotfiles/keybinds.md" # Keybind reference

# Quick folder access
alias cdblog="cd ~/src/personal/blog && l"
alias cdcloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/ && l"
alias cdcurated="cd ~/src/curated && l"
alias cddocs="cd ~/Documents && l"
alias cddown="cd ~/Downloads && l"
alias cddots="cd ~/.dotfiles && l"
alias cdextend="cd ~/src/extensions l"
alias cdhome="cd ~/src/personal/homebase && l"
alias cdlearn="cd ~/src/learning && l"
alias cdmacos="cd ~/src/macos && l"
alias cdme="cd ~/src/personal/krismstorck && l"
alias cdmymacos="cd ~/Documents/Personal/my-macOS && l"
alias cdmyios="cd ~/Documents/Personal/my-iOS && l"
alias cdsrc="cd ~/src && l"
alias cdpersonal="cd ~/src/personal && l"
alias cdprod="cd ~/src/prod && l"
alias cdresume="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Write/prof/resume && l"
alias cdweb="cd ~/src/web && l"
alias cdwrite="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Write && l"

# Quick project access
alias codeblog="code ~/src/personal/blog"
alias codecurate="code ~/src/curated"
alias codekris="code ~/src/personal/krismstorck"
alias codemind="code ~/Library/Mobile\ Documents/com~apple~CloudDocs/Write/mind-palace"

# Radio
alias npr="ffplay http://204.93.207.172 -nodisp" # WAMU
alias wtul="ffplay http://129.81.156.83:8000/ -nodisp" # WTUL

# Focus/study
alias ytlsynth="source ~/src/macos/bash/yt-playlist/synthwave.sh"
alias ytlphonk="source ~/src/macos/bash/yt-playlist/phonk.sh"
alias ytlwolves="source ~/src/macos/bash/lofi4werewolves.sh"
alias ytlxmas="source ~/src/macos/bash/yt-playlist/xmas.sh"
alias ytlchill="source ~/src/macos/bash/yt-playlist/chill.sh"
alias ytlttpd="source ~/src/macos/bash/yt-playlist/lofi-ttpd.sh"

# spt control
alias skip="spt pb -n"
alias back="spt pb -p"
alias pause="spt pb -t"
alias like="spt pb --like"

# Books I'm reading
alias bookshelf="cd ~/Documents/Calibre\ Library && l"
alias epyapics="cd ~/Documents/Calibre\ Library/APICS, Greg P. Allgair, Al Bukey, Alan L. Milliken, Peter W. Murray - CSCP 2020 Module 1 Section A (2020).epub"
alias epymindful="cd ~/Documents/Calibre\ Library/Ven. - Henepola Gunaratana. Mindfulness In Plain English.pdf"
alias epyatomic="cd ~/Documents/Calibre\ Library/James Clear - Atomic Habits_ Tiny Changes, Remarkable Results-Penguin Publishing Group (2018).epub"

# Better Git
alias ga='git add'
alias gc="git commit -m"
alias gpp="git pull"
alias gps="git push"
alias gs="git status"
alias gl='git log --graph --oneline --decorate'

# System
alias beep='echo -en "\007"' # Sound check

alias pbc="pbcopy"
alias pbp="pbpaste"

alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"
