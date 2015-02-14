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

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

export EDITOR="subl -w"

# cd..
setopt auto_cd
cdpath=($HOME/src/github.com $HOME/src/go.googlesource.com/go $HOME/src/go.googlesource.com/go/src $HOME/src/gopkg.in $HOME/src/bitbucket.org $HOME/src/golang.org $HOME/Development $HOME/Dropbox/Documents/Talks/)

# XQuartz path
export CPPFLAGS=-I/opt/X11/include
# CC=/usr/local/bin/gcc-4.2

# eval "$(gh alias -s)"

# Set a DOCKER_HOST environment variable that points to your VM
# eval $(dvm env)

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/nathany/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# added by travis gem
[ -f /Users/nathany/.travis/travis.sh ] && source /Users/nathany/.travis/travis.sh
