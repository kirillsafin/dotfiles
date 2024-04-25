# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
#ZSH_THEME="kafeitu" #gut
#ZSH_THEME="bureau" #gut
#ZSH_THEME="ys" #gut
#ZSH_THEME="af-magic" #gut
#ZSH_THEME="dogenpunk" #gut
# ZSH_THEME="fino" #gut

ZSH_THEME="zeta" #gut

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
zstyle ':omz:alpha:lib:git' async-prompt no

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'

# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

HISTFILE=~/.bash_history

setopt histignoredups
setopt APPEND_HISTORY
unsetopt extended_history


#Sontiges
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
[[ -f ~/.bash_aliases ]] && source $HOME/.bash_aliases

XDG_CONFIG_HOME=$HOME/.config

JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
JDTLS_HOME=${HOME}/prog/language-servers/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/bin
PATH=$PATH:$JDTLS_HOME

# NPM_PACKAGES="${HOME}/.npm-packages"
# NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
# PATH="$NPM_PACKAGES/bin:$PATH"

# Python Executable
PIP_BIN="$HOME/.local/bin/"
PATH=$PATH:$PIP_BIN

# VCPKG
if [ -d $HOME/prog/vcpkg ]; then
  autoload bashcompinit
  bashcompinit
  source $HOME/prog/vcpkg/scripts/vcpkg_completion.zsh
fi

# LUA
alias luamake=$HOME/prog/language-servers/lua-language-server/3rd/luamake/luamake
PATH=$PATH:$HOME/prog/language-servers/lua-language-server/bin
# PIPX autocompletion
autoload -U bashcompinit
bashcompinit

# ARDUINO
PATH="$PATH:$HOME/prog/arduino"

# RUST/CARGO
PATH="$PATH:$HOME/.cargo/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kirill/prog/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kirill/prog/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kirill/prog/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kirill/prog/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# private vim mode
export EDITOR="vim -u ~/.vimrcprivate"

# Pomodoro
declare -A pomo_options
pomo_options["work"]="1"
pomo_options["break"]="1"

pomodoro () {
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
  val=$1

  notify-send -u "normal" -i "🍅" -a "Pomodoro" "Pomodoro ${val} Session started, Timer: ${pomo_options["$val"]} min"

  # timer ${pomo_options["$val"]}m
  sleep ${pomo_options["$val"]}m

  notify-send -u "normal"  -i "🍅" -a "Pomodoro" -t 0 "Session Done"
  else
    echo "🍅 Pomodoro not started: possible option are 'work' or 'break'"
  fi
}

alias wo="pomodoro 'work'"
alias br="pomodoro 'break'"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
