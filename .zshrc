# Powerlevel10k instant prompt
# Must stay close to the top of ~/.zshrc
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ============================================================================
# Oh My Zsh Configuration
# ============================================================================

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git z zsh-autosuggestions zsh-autocomplete zsh-syntax-highlighting zsh-vi-mode)

source $ZSH/oh-my-zsh.sh

# ============================================================================
# Load Custom Modules
# ============================================================================

# Load all configuration files from ~/.zsh
for config_file in $HOME/.zsh/*.zsh; do
  [ -r "$config_file" ] && source "$config_file"
done

# ============================================================================
# External Tool Integrations
# ============================================================================

# Starship prompt
eval "$(starship init zsh)"

# FZF fuzzy finder
source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh

# Angular CLI autocompletion
source <(ng completion script)
