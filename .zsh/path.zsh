# PATH Configuration

# pnpm
export PNPM_HOME="/home/saeed-sufi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Add custom paths
export PATH=$PATH:/opt/lua-language-server/bin
export PATH=$PATH:/home/saeed-sufi/.local/bin/
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/saeed-sufi/go/bin
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
