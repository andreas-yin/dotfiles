# My Hyprland setup on Arch Linux

## Tutorials

Based on the tutorials by typecraft:

- Part 1: https://www.youtube.com/watch?v=2CP_9-jCV6A
- Part 2: https://www.youtube.com/watch?v=KA1jv40q9lQ
- Part 3: https://www.youtube.com/watch?v=omhJMH9lPPc

## Install

### Install yay

First install the package manager `yay`.

### Run commands

Run these commands in the given order:

`yay -S kitty` (prerequisite for installing hyprland, hyprland prefers kitty for the Terminal)

`yay -S hyprland`

`yay -S stow` (for creating symlinks)

`yay -S ttf-cascadia-code-nerd` (font for kitty)

`yay -S tts-font-awesome` (for icons and glyphs, e.g. used by waybar)

`stow kitty`

`rm -rf ~/.config/hypr`

`cd ~/dotfiles`

`stow hyprland`

`yay -S wofi` (program launcher on wayland)

`stow wofi`

`yay -S network-manager-applet blueman` (for "tray" module in waybar)

`yay -S waybar` (for status bar with Wifi, battery, date information, etc.)

`stow waybar`

`yay -S hyprshot` (for taking screenshots)

`stow hyprmocha` (for colors used by our hyprlock config)

`yay -S hyprlock` (for locking the screen)

`stow hyprlock`

`yay -S hypridle`

`stow hypridle`

`stow backgrounds` (for background image used by hyprpaper)

`yay -S hyprpaper`

`stow hyprpaper`

`yay -S starship` (for styling the Terminal prompt similar to “Oh My Zsh!” )

`stow starship`

`yay -S nwg-look` (for GTK apps styling)

`yay -S catppuccin-gtk-theme-mocha` (for color theme used by nwg-look)

`yay -S neovim`

`stow nvim`

`yay -S wl-clipboard` (for copy/paste to/from clipboard to work with nvim)

`yay -S fzf` (fuzzy finder for lazyvim)

`yay -S tmux`

`cd ~`

Install tmux plugin manager (TPM)

`cd ~/dotfiles`

`stow tmux`

Install tmux plugins

`stow battery`

`chmod +x ~/dotfiles/battery/.local/bin/battery.sh`

`stow ssh_agent` (for running SSH agent automatically upon login)

`systemctl enable --user ssh-agent.service`

### Restart

Restart Hyprland via `SUPER` + `m`.
