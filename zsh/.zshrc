autoload -Uz compinit
compinit

export PATH=/opt/homebrew/bin:$PATH
export PATH="/Users/machd/bin:$PATH"
export PATH="/Users/ayad/Documents/Deps/flutter/bin:$PATH"
export PATH="$HOME/Library/Android/sdk:$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/tools/bin:$PATH"
#export JAVA_HOME="/Users/ayad/Library/Java/JavaVirtualMachines/temurin-17.0.8/Contents/Home/"
#export JAVA_HOME="/Users/ayad/Library/Java/JavaVirtualMachines/graalvm-jdk-17.0.8+9.1/Contents/Home/"
#export GRAAL_HOME="/Library/Java/JavaVirtualMachines/graalvm-ce-java17-22.3.3"
export GRAAL_HOME="Library/Java/JavaVirtualMachines/graalvm-jdk-21.0.3"
export JAVA_HOME="$GRAAL_HOME/Contents/Home"
export GRAALVM_HOME="$GRAAL_HOME/Contents/Home"
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_351.jdk/Contents/Home"
#export JAVA_HOME="/Users/ayad/Library/Java/JavaVirtualMachines/temurin-1.8.0_352/Contents/Home"
#export DOCKER_DEFAULT_PLATFORM=linux/amd64
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java17-22.3.3/Contents/Home/bin:$HOME/.pub-cache/bin:$PATH
#export PATH=Library/Java/JavaVirtualMachines/graalvm-jdk-21.0.3/Contents/Home/bin:$HOME/.pub-cache/bin:$PATH
#export PATH=/Users/ayad/Library/Python/3.9/bin:$PATH

export KUBE_EDITOR="/usr/bin/nano"
alias kb=kubectl
source <(kubectl completion zsh)

#if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
 # eval "$(oh-my-posh init zsh)"
#  eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/star.omp.json)"
#fi

eval "$(starship init zsh)"

#flux autocompletion
. <(flux completion zsh)

source <(helm completion zsh)

alias tr=terraform
#source <(terraform completion zsh)

source <(podman completion zsh)

source <(gitops completion zsh)

source <(istioctl completion zsh)ls

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#source <(fzf --zsh)

source $HOME/.config/history-window.zsh 

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source "$HOME/.config/history.zsh"

source "$HOME/.config/aliases.zsh"

source "$HOME/.config/interactive-plugin.zsh"

source "$HOME/.config/command-not-found.zsh"