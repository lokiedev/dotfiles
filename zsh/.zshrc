#!/usr/bin/zsh

source ~/.config/zsh/setup-zim.zsh
source ~/.config/zsh/setup-android.zsh
source ~/.config/zsh/setup-rust.zsh
source ~/.config/zsh/setup-yazi.zsh

export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

export EDITOR="nvim"

export GPG_TTY=$(tty)

#--- Setup proper cursor ---#

bindkey -v

function set_cursor() {
	if [[ $KEYMAP == vicmd ]]; then
		print -n '\e[2 q'
	else
		print -n '\e[6 q'
	fi
}

function zle-keymap-select() {
	set_cursor
}

zle -N zle-keymap-select

autoload -Uz add-zsh-hook
add-zsh-hook precmd set_cursor

#--- System information ---#

echo "\n"
fastfetch
echo "\n"
