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
# zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-autocomplete
# git clone --depth 1 https://github.com/marlonrichert/zsh-autocomplete ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete

# zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-vi-mode
# git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode

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
