# zshrc - for interactive shells

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load in ~/.oh-my-zsh/themes/
# https://github.com/sindresorhus/pure
ZSH_THEME="pure"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew gem vagrant terminalapp)

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias pmp="osascript ~/Development/styleterm.scpt 'Red Sands'; ssh deploy@primus_production; osascript ~/Development/styleterm.scpt 'Pro'"

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

export EDITOR="subl -w"

# cd..
setopt auto_cd
cdpath=($HOME/src/github.com $HOME/src/code.google.com/p/go/src $HOME/src/gopkg.in $HOME/src/bitbucket.org $HOME/src/golang.org $HOME/src/code.google.com/p $HOME/src/github.com/GetJobber $HOME/Development $HOME/Dropbox/Documents/Talks/)

# Ruby
export RUBY_GC_HEAP_INIT_SLOTS=600000
export RUBY_GC_HEAP_FREE_SLOTS=600000
export RUBY_GC_HEAP_GROWTH_FACTOR=1.25
export RUBY_GC_HEAP_GROWTH_MAX_SLOTS=300000
export RUBY_GC_MALLOC_LIMIT=64000000
export RUBY_GC_OLDMALLOC_LIMIT=64000000

# XQuartz path
export CPPFLAGS=-I/opt/X11/include
# CC=/usr/local/bin/gcc-4.2

# eval "$(gh alias -s)"

# added by travis gem
[ -f /Users/nathany/.travis/travis.sh ] && source /Users/nathany/.travis/travis.sh
