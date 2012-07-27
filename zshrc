. ~/.zsh/colours
. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

hitch() {
command hitch "$@"
if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'
# Uncomment to persist pair info between terminal instances
# hitch

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

eval "$(rbenv init - zsh)"

