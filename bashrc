# Colours
#PS1='[\u@\h \W]\$ '  # Default
#PS1='\[\e[0;92m\][\u@\h \W]\$\[\e[0m\] '  # Hi-intensity Green prompt
PS1='\[\e[0;94m\][\u@\h \W]\$\[\e[0m\] '  # Blue prompt
#PS1='\[\e[44m\][\u@\h \W]\$\[\e[0m\] '   # Blue background prompt
#PS1='\[\e[0;97m\][\u@\h \W]\$\[\e[0m\] ' # Hi-intensity White prompt
#PS1='\[\e[0;37m\][\u@\h \W]\$\[\e[0m\] ' # White prompt

## ALIASES ##

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

# Enable quicklook from Terminal
alias quick="qlmanage -p"

# Aliases for starting and stopping MySQL server
alias mysqlstart="sudo mysqld_safe --user=mysql &"
alias mysqlstop="sudo mysqladmin -u root -p shutdown"

# Misc aliasing
alias doit="open -a Opera http://i.doit.im"
alias ll="ls -FlAG"
alias touch-c-boiler="cp ~/code/resources/c/boilerplate.c ."

##
# Your previous /Users/Yosh/.bash_profile file was backed up as /Users/Yosh/.bash_profile.macports-saved_2012-10-06_at_15:52:00
##

# MacPorts Installer addition on 2012-10-06_at_15:52:00: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    $(brew --prefix)/etc/bash_completion
fi

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Haskell (Cabal) packages
export PATH="/usr/local/bin:$PATH"
export PATH="~/Library/Haskell/bin:$PATH"

# Setting PATH for MySQL
export PATH="/usr/local/mysql/bin:$PATH"

# Setting PYTHONPATH for my custom modules
export PYTHONPATH=$PYTHONPATH:/Users/Yosh/code/pymodules
export PYTHONPATH=$PYTHONPATH:/Users/Yosh/Documents/Work/Tutoring/2014_COMP10001/projects/proj1

# Environment variables for Subversion
export SVN_EDITOR=vim

# added by Anaconda 2.1.0 installer
export PATH="/Users/Yosh/anaconda/bin:$PATH"

# NetHack!
export PATH="/usr/games/bin:$PATH"

# set Git editor
export GIT_EDITOR=vim

echo "Sourced bashrc"
