# source PATH variable set in zpath
# see http://www.zsh.org/mla/users/2003/msg00600.html
if [[ $SHLVL == 1 && ! -o LOGIN ]]; then
    source ~/.zpath
fi
