# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/ed/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(… zsh-completions)
autoload -U compinit && compinit

# git shortcuts
alias status="git status"
alias diff="git diff"
alias diffs="git diff --staged ."
alias branch="git rev-parse --abbrev-ref HEAD"
alias push="git push origin HEAD"
alias pushn="push --no-verify"
alias gpom="git pull origin master && fetch"
alias com="git checkout master && git pull origin master"
alias pull="git pull origin HEAD"
alias fetch="git fetch"
alias reignore="git rm -r --cached .; git add ."
alias clean="git branch -d $(git branch --merged=master | grep -v master); git fetch --prune"
function undo() { git checkout -- $@; git status }
function fuck() { git reset HEAD -- $@; git status }
function db() { git branch -D $1 }
function co() { git checkout $1 }
function cob() { git checkout -b $1 && pushn }
function aacm() { git add . && git commit -m "$1" }
function aacmp() { aacm "$1" && push }
function commit() { git commit -m "$1" }
function amend() { git commit --amend -m "$1" }

# quick access to projects
alias projects="cd ~/Desktop/Projects"
alias occupie="projects && cd Occup.ie"
alias slav="projects && cd Games/Slav\ Squat"
alias syzible="projects && cd Web/Syzible"

# consultancy projects under syzible
alias consultancy="projects && cd consultancy"
alias t1backend="consultancy && cd T1Exercise/*Backend"
alias t1android="consultancy && cd T1Exercise/*Android"
alias t1ios="consultancy && cd T1Exercise/*iOS"
alias depublish_android="consultancy && cd Depublish/*Android"
alias depublish_ios="consultancy && cd Depublish/*iOS"
alias hc="consultancy && cd HairdressersConnect"
alias greenfi_backend="consultancy && cd GreenFi/*Web/"
alias greenfi_ui="greenfi_backend && cd ui/"
alias greenfi_android="consultancy && cd GreenFi/*Android"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/usr/local/sbin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.fastlane/bin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


