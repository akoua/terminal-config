if [[ $- == *i* ]]; then

fzf-kill-widget() {
  local pid
  if [[ "${UID}" != "0" ]]; then
   ps -j -u ${UID} | awk '{print $1, $2, $9, $10}' | fzf -m --height 40% --layout reverse --border  
  else
    pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
  fi

  if [[ "x$pid" != "x" ]]; then
    echo $pid | xargs kill "-${1:-9}"
  fi
  zle reset-prompt
}
zle     -N     fzf-kill-widget
bindkey '^K' fzf-kill-widget

fi
