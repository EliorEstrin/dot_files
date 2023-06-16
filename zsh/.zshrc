# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

alias vim="nvim"
alias ls="/opt/coreutils/bin/ls"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker colorize command-not-found emoji fzf zsh-interactive-cd zsh-syntax-highlighting zsh-autosuggestions aws jump autojump kubectl virtualenv helm)

compdef _argocd argocd
source <(argocd completion zsh)
autoload -U compinit
compinit -i
source <(kubectl completion zsh)
source $ZSH/oh-my-zsh.sh
source ~/.bashrc
# User configuration


# path , Path values
export PYTHONPATH=/home/superman/Desktop/programs/personegenerator:$PYTHONPATH
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$HOME/.dotnet:$HOME/.dotnet/tools:$HOME/RandomScripts

export PATH=$PATH:$HOME/nvm/versions/node/v18.15.0/bin/node
export PATH=$PATH:$HOME/nvm/versions/node/v18.15.0/bin

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
alias sqlcmd="/opt/mssql-tools/bin/sqlcmd" 
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
compdef _argocd argocd
source <(argocd completion zsh)
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias at="alacritty-themes"

alias copy='xclip -selection clipboard'

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Load Angular CLI autocompletion.
source <(ng completion script)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion