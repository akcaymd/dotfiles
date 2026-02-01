#
# bash
#
alias ..='cd ..'
alias ls='eza -al --icons --color=always --group-directories-first' # my preferred listing
alias la='eza -a --icons --color=always --group-directories-first'  # all files and dirs
alias grep='grep --color=auto'
alias z="zoxide"
alias files="nautilus"
alias code="codium"
alias md="md-tui"
alias hyprconf="vim .config/hypr/hyprland.conf"
alias waybar-reload="pkill waybar && hyprctl dispatch exec waybar"
alias wttr="curl wttr.in/milas"
alias doom="~/.emacs.d/bin/doom"
alias org='emacs -nw --eval "(org-agenda nil \"a\")"'
alias salah="~/codes/PrayerTimes/prayer ~/codes/PrayerTimes/prayer-times.csv table"
alias duh="du -h --max-depth=1"

#
# flatpak
#
alias f="flatpak install"
alias fu="flatpak update"
alias fl="flatpak list"
alias fr="flatpak uninstall"
alias fru="flatpak uninstall --unused"
alias fs="flatpak search"
alias frun="flatpak run"

#
# pacman
#
alias rorphan='sudo pacman -Rns $(pacman -Qtdq) && flatpak uninstall --unused'
alias pl="pacman -Q"
alias ps="pacman -Q | grep"
alias pr="sudo pacman -Rns"
alias y="yay"
alias yu="yay -Syu && flatpak update"
alias ys="yay -Ss"
alias ysyu="yay -Syu"
alias clean_cache="yay -Sc"

#
# timewarrior
#
alias tw="timew"
alias today="timew summary :day && timew day"
alias yesterday="timew summary :yesterday"
