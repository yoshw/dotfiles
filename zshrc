# Path to your oh-my-zsh installation.
export ZSH=/Users/Yosh/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sprockets"

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
ENABLE_CORRECTION="true"

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
plugins=(git brew python osx fasd zsh-syntax-highlighting)
eval "$(fasd --init auto)"

# User configuration

export PATH="/usr/games/bin:/Users/Yosh/anaconda/bin:/usr/local/mysql/bin:~/Library/Haskell/bin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/2.6/bin:/Library/Frameworks/Python.framework/Versions/Current/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

# Setting PYTHONPATH for my custom modules
export PYTHONPATH=$PYTHONPATH:"/Users/Yosh/code/pymodules"
export PYTHONPATH=$PYTHONPATH:"/Users/Yosh/Documents/Work/Tutoring/2014_COMP10001/projects/proj1"

source $ZSH/oh-my-zsh.sh

# Environment variables for Subversion
export SVN_EDITOR=vim
export GIT_EDITOR=vim

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias touch-c-boiler="cp ~/code/resources/c/boilerplate.c ."
# Launch apps
alias chrome="open /Applications/Google\ Chrome.app"
alias itunes="open /Applications/iTunes.app"
alias emmacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias octave="exec '/Applications/Octave.app/Contents/Resources/bin/octave'"
alias vim="/usr/local/Cellar/vim/7.4.253/bin/vim"

# Quick switching to commonly-used directories
alias cdapps="cd /Applications"
alias cdstudy="cd ~/Documents/study/bsc/2015/sem1"
alias cdcomp10001="cd ~/Documents/Work/Tutoring/2015_COMP10001"
alias cdurop="cd ~/Documents/Work/2015_UROP"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
echo "Sourced .zshrc"
