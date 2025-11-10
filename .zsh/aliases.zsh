# Aliases

# System updates
alias update="sudo apt-get update && sudo apt-get -y upgrade"

# File listing
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"
alias la="eza --icons --group-directories-first -la"
alias lt="eza --icons --tree --level=2 -I node_modules"

# Docker shortcuts
alias d="docker"
alias dc="docker compose"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcl="docker compose logs -f"
alias dcr="docker compose restart"
alias dce="docker compose exec"

alias lzd='lazydocker'

# Tree with sensible defaults
alias tree3="tree -L 3 -I node_modules"
