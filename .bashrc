# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
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

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Custom Prompt
PS1="\e[1;32m\u@\h\e[0m:\e[1;34m\w\e[0m$ "

# Cargo Package Manager
. "$HOME/.cargo/env"

# pnpm
export PNPM_HOME="/home/lnxwizard/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm endexport PATH="$PATH:/home/lnxwizard/.haze"


# Aliases
alias ls="exa"
alias cat="bat"
alias grep="ripgrep"
