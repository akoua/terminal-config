# Function to search history with fzf
# https://medium.com/@KpihX/zsh-un-shell-pas-comme-les-autres-e3adeb496279
fzf-history-widget() {
  # List history items with line numbers, keep only the latest unique command, and pipe to fzf
  local selected=$(fc -rl 1 | awk '{sub("^[ ]*[^ ]+[ ]+","",$0);if(!seen[$0]++){print $0}}' | fzf --height 40% --layout=reverse --border --query="$LBUFFER" --bind 'ctrl-c:abort')
  # If an item was selected, replace LBUFFER with it
  if [ -n "$selected" ]; then
    LBUFFER="${selected}"
  fi
  zle redisplay
}
zle -N fzf-history-widget
bindkey '^R' fzf-history-widget
