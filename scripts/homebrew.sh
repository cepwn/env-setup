#!/usr/bin/env bash

if ! command -v brew &>/dev/null; then
	echo "Homebrew not found. Installing..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo >> $HOME/.zprofile
	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
	eval "$(/opt/homebrew/bin/brew shellenv)"
else
	echo "Homebrew is already installed."
fi

brew install \
	go \
	nvm \
	awscli \
	kubernetes-cli \
	helm \
	fzf \
	font-jetbrains-mono-nerd-font \
	zsh-autosuggestions \
	zsh-syntax-highlighting \
	neovim \
	tmux \
	ripgrep \
  xclip

brew install --cask \
	ghostty \
	firefox@developer-edition \
	google-chrome \
	microsoft-edge \
	slack \
	microsoft-teams \
	1password \
	1password-cli \
	raycast \
	postman \
	linear-linear \
	spotify \
	todoist \
	docker \
	notion \
	karabiner-elements \
	fleet \
	webstorm \
	goland

brew tap hashicorp/tap

brew install hashicorp/tap/terraform
