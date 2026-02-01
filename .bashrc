#
# ~/.bashrc
#

export PATH="$HOME/.bin:$PATH"

export EDITOR="vim"
export FZF_DEFAULT_OPTS="--layout=reverse --exact --border=bold --border=rounded --margin=3% --color=dark"
export MANPAGER="less"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

complete -cf sudo

# Load custom aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

fastfetch --config os
#alias | sed "s/alias //; s/='/\t/; s/'$//" | awk -F'\t' 'BEGIN {printf "\033[1;37m%-20s %-50s\033[0m\n", "Alias", "Command"} {printf "\033[1;32m%-20s\033[1;33m%-50s\033[0m\n", $1, $2}' 

eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init bash)"
export QT_QPA_PLATFORMTHEME="qt6ct"

mkcd () {
  \mkdir -p "$1"
  cd "$1"
}
