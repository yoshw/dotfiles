if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

echo "Sourced bash_profile"

export PATH="$HOME/.cargo/bin:$PATH"
