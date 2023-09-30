# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='hx'
else
export EDITOR='hx'
fi

# Starship Shell Prompter
eval "$(starship init zsh)"

# Aliases
alias ls="exa"
alias cat="bat"
alias grep="rg"

# Brew Package Manager
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Cargo Package Manager
. "$HOME/.cargo/env"
 
# pnpm
export PNPM_HOME="/home/lnxwizard/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm endexport PATH="$PATH:/home/lnxwizard/.haze"

