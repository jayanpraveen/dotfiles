export PATH=$PATH:/usr/local/sbin

# GNU grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# postgres 
export PATH="/Applications/Postgres.app/Contents/Versions/13/bin:$PATH"

# ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.0.0/bi/Users/jayanpraveen n:$PATH"

# java 11
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home:"
export JAVA_HOME="$(/usr/libexec/java_home)"

# zsh syntax highlighting 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#15ff00,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#f5f535,bold'

# zsh autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=yellow,bg=black,bold,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
COMPLETION_WAITING_DOTS="true"

# lazy load node
lazy_load_nvm() {
  echo "✨ staring nvm..."
  unset -f node
  export NVM_DIR=~/.nvm
  [[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
}

node() {
  echo "✨ staring node..."
  lazy_load_nvm
  node $@
}


# -----< alias >-----

# python
alias py="python3"

# mkdir + cd
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# opens this file 
alias zrc="vim ~/.zshrc"

# django
alias pmm="python3 manage.py makemigrations && python3 manage.py migrate"
alias pmr="python3 manage.py runserver 0.0.0.0:8000"

# -----< oh-my-zsh >-----

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git brew zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

