# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

eval "$(oh-my-posh init bash --config $HOME/.config/ohmyposh/catppuccin.omp.toml)"
eval "$(zoxide init bash)"

alias waybar-reload="pkill waybar && hyprctl dispatch exec waybar"
alias waybar-start="hyprctl dispatch exec waybar"
alias lofi="mpv https://youtu.be/jfKfPfyJRdk --no-video"
alias codium="flatpak run com.vscodium.codium"
alias obsidian="cd ~/IMF && nvim ."
alias ytwatchlist="sh watchlater/youtube-watchlist-cli.sh"
alias ytwatchlater="sh watchlater/youtube-watchlist-cli.sh ~/Downloads/youtube-watchlater.json"
