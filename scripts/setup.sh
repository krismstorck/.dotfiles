#!/usr/bin/env bash

# Install the XCode developer tools
xcode-select --install

# Install Rosetta
softwareupdate --install-rosetta --agree-to-license

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

brew upgrade

PACKAGES=(
	awk
	bash
	bat
	coreutils # Those that come with macOS are outdated
	cmake
	epy
	exa
	ffmpeg
	findutils
	fzf
	git
	gnupg2
	gnu-sed
	grep
	jq
	m-cli
	mas
	moreutils
	mpv
	nano
	ncurses
	neofetch
	neovim
	nvm
	openssh
	openssl
	pandoc
	pipx
	portaudio
	qemu
	ranger
	rbenv
	scc
	# spotifyd
	spotify-tui
	tmux
	wget
	yabai
	yarn
	youtube-dl
	zenith
	zsh
)

brew install ${PACKAGES[@]}

CASKS=(
	alfred
	basictex
	calibre
	firefox
	gimp
	google-chrome
	hammerspoon
	iterm
	origin
	sublime-text
	# ubersicht
	utm
	steam
	visual-studio-code
	vlc
	vnc-viewer
)

sudo -u $SUDO_USER brew install --cask ${CASKS[@]}

brew doctor

brew cleanup

echo "Homebrew install finished..."

# Install Mac App Store apps
open "/Applications/App Store.app" 

mas install 1463298887 # Userscript for Safari
mas install 1352778147 # Bitwarden, or else we can't use the Safari extension
mas install 880001334 # Reeder 3

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install npm

# Install oh-my-zsh settings, plugins

# Install tmux plugin manager

# Install 
