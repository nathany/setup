# zshrc - for interactive shells

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load in ~/.oh-my-zsh/themes/
# https://github.com/sindresorhus/pure
ZSH_THEME="pure"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew gem vagrant terminalapp bundler)

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias pmp="osascript ~/Development/styleterm.scpt 'Red Sands'; ssh deploy@primus_production; osascript ~/Development/styleterm.scpt 'Pro'"

alias atom="atom-beta"
alias apm="apm-beta"

alias go14="/Users/nathany/src/go.googlesource.com/go1.4/bin/go"
alias go15="/Users/nathany/src/go.googlesource.com/go1.5/bin/go"
alias go16="/Users/nathany/src/go.googlesource.com/go1.6/bin/go"

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# RCM
export DOTFILES_DIRS=$HOME/src/github.com/nathany/dotfiles

export EDITOR="subl -w"

# cd..
setopt auto_cd
cdpath=($HOME/src/github.com $HOME/src/github.com/nathany $HOME/src/github.com/gopherbook $HOME/src/github.com/fsnotify $HOME/src/github.com/aai $HOME/src/github.com/RobotsAndPencils $HOME/src/go.googlesource.com $HOME/src/go.googlesource.com/go/src $HOME/src/gopkg.in $HOME/src/golang.org $HOME/Dropbox/Documents/Talks/)

# eval "$(gh alias -s)"

# Set a DOCKER_HOST and related environment variables
# docker-machine start dev
# eval "$(docker-machine env dev)"

# added by travis gem
# [ -f /Users/nathany/.travis/travis.sh ] && source /Users/nathany/.travis/travis.sh
