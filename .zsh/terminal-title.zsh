
# ~/.zsh/terminal-title.zsh

# Disable kitty's default title management
DISABLE_AUTO_TITLE="true"

# Function to set terminal title
function set_terminal_title() {
  local dir_name="${PWD##*/}"
  
  if [[ -n "$1" ]]; then
    print -Pn "\e]0;$dir_name | $1\a"
  else
    print -Pn "\e]0;$dir_name\a"
  fi
}

# Pre-command hook to update the title before each command
function preexec() {
  set_terminal_title "$1"
}

# Post-command hook to reset the title after each command
function precmd() {
  set_terminal_title
}

# Set initial title
set_terminal_title
