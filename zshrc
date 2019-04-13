# Path to your oh-my-zsh installation.
export ZSH=/Users/sujith/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vagrant npm)

#custom plugin for docker-machine auto-completion
plugins+=(docker aws zsh-syntax-highlighting)

# Make sure compinit is loaded
autoload -U compinit && compinit -i

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

#bower
export PATH="/usr/local/sbin:$PATH"
#for go
export PATH="/usr/local/go/bin:$PATH"

export PATH="$HOME/.node/bin:$PATH"
export PATH="$PATH:/Users/sujith/coding/android/sdk/android-sdk-macosx/platform-tools"
export PATH="$PATH:/Users/sujith/coding/android/sdk/android-sdk-macosx/tools"
export PATH="/usr/local/mysql/bin:$PATH"

#append sensitive info from ~/.sensitive
if [ -f ~/.sensitive ]; then
  . ~/.sensitive
fi


#for android
export USE_GLOBAL_ADK=t
export ANDROID_HOME="/Users/sujith/coding/android/sdk/android-sdk-macosx/"

export POWERLINE_CONFIG_COMMAND=powerline-config

# You may need to manually set your language environment
 export LC_ALL=en_US.UTF-8
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
### =========== My Aliases =============== ###
alias dcount="figlet $(ls ~/Downloads/ | wc -l)"
if [ -f ~/.aliases ]; then
. ~/.aliases
fi
## for zsh-comletions ######
fpath=(/usr/local/share/zsh-completions $fpath)

if [ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

export PATH="$HOME/.yarn/bin:$PATH"
eval "$(thefuck --alias)"
## for Azure-cli
export PATH="$PATH:/Users/sujith/bin"
autoload bashcompinit && bashcompinit
source '/Users/sujith/lib/azure-cli/az.completion'
export GPG_TTY=$(tty)
export HISTCONTROL=ignorespace
export EDITOR='nvim'

function prev() {
  PREV=$(fc -lrn | head -n 1)
  sh -c "pet new `printf %q "$PREV"`"
}
