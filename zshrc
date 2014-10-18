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

setopt NO_NOMATCH

eval "$(rbenv init - zsh)"

if [ `rbenv version-name` =~ "2\.1" ]; then
  unset RUBY_FREE_MIN
  unset RUBY_HEAP_MIN_SLOTS
fi

~/bin/motd
