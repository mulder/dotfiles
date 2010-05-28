. ~/.zsh/colours
. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion


# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi