# zshrc - for interactive shells

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load in ~/.oh-my-zsh/themes/
# https://github.com/sindresorhus/pure
ZSH_THEME="refined"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew kubectl vagrant terminalapp colored-man-pages)

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias pmp="osascript ~/Development/styleterm.scpt 'Red Sands'; ssh deploy@primus_production; osascript ~/Development/styleterm.scpt 'Pro'"

alias atom="atom-beta"
alias apm="apm-beta"

alias go14="/Users/nathany/src/go.googlesource.com/go1.4/bin/go"
alias go17="/Users/nathany/src/go.googlesource.com/go1.7/bin/go"
alias go18="/Users/nathany/src/go.googlesource.com/go1.8/bin/go"
alias go19="/Users/nathany/src/go.googlesource.com/go1.9/bin/go"
alias gotip="/Users/nathany/src/go.googlesource.com/gotip/bin/go"

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# RCM
export DOTFILES_DIRS=$HOME/src/github.com/nathany/dotfiles

export EDITOR="subl -w"

# cd..
export CDPATH=.:$HOME/src/github.com:$HOME/src/github.com/nathany:$HOME/src/go.googlesource.com:$HOME/src/go.googlesource.com/go1.8/src:$HOME/src/golang.org

# eval "$(gh alias -s)"

# Set a DOCKER_HOST and related environment variables
# docker-machine start dev
# eval "$(docker-machine env dev)"

# added by travis gem
# [ -f /Users/nathany/.travis/travis.sh ] && source /Users/nathany/.travis/travis.sh
