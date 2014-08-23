# chruby
# source /usr/local/opt/chruby/share/chruby/chruby.sh
# source /usr/local/opt/chruby/share/chruby/auto.sh
# chruby 2.1.1

# brew install zsh (newer version)
# chsh -s /usr/local/bin/zsh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# https://github.com/sindresorhus/pure
ZSH_THEME="pure"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails bundler git textmate ruby lighthouse heroku)
plugins=(brew gem bundler vagrant terminalapp)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH

export EDITOR="subl -w"

export DEVELOPMENT=$HOME/Development

# Go Language
export GOPATH=$DEVELOPMENT/go/project:$DEVELOPMENT/go/scratch
export PATH=$PATH:$DEVELOPMENT/go/golang/bin:$DEVELOPMENT/go/project/bin
# export GOROOT=$DEVELOPMENT/go/golang # for codereview tool in hgrc

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin":$PATH

# cd..
setopt auto_cd
cdpath=($DEVELOPMENT/go/project/src/github.com $DEVELOPMENT/go/project/src/gopkg.in $DEVELOPMENT/go/project/src/bitbucket.org $DEVELOPMENT/go/project/src/code.google.com/p $DEVELOPMENT/go/golang $DEVELOPMENT/go/golang/src/pkg $DEVELOPMENT/jobber/ $DEVELOPMENT $HOME/Dropbox/Documents/Talks/)

# Ruby
export RUBY_GC_HEAP_INIT_SLOTS=600000
export RUBY_GC_HEAP_FREE_SLOTS=600000
export RUBY_GC_HEAP_GROWTH_FACTOR=1.25
export RUBY_GC_HEAP_GROWTH_MAX_SLOTS=300000
export RUBY_GC_MALLOC_LIMIT=64000000
export RUBY_GC_OLDMALLOC_LIMIT=64000000

# export RUBY_HEAP_MIN_SLOTS=3000000
# export RUBY_HEAP_FREE_MIN=300000
# export RUBY_GC_MALLOC_LIMIT=100000000

# export RUBY_GC_HEAP_INIT_SLOTS=700000
# export RUBY_GC_HEAP_FREE_SLOTS=600000
# export RUBY_GC_HEAP_GROWTH_FACTOR=1.25
#export RUBY_GC_HEAP_GROWTH_MAX_SLOTS=300000
# export RUBY_GC_MALLOC_LIMIT=64000000
# export RUBY_GC_OLDMALLOC_LIMIT=64000000

# http://railsapps.github.io/openssl-certificate-verify-failed.html
# brew install curl-ca-bundle
# export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

# pyenv
# if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export SETUPTOOLS_VERSION=1.0
export PIP_VERSION=1.4.1

# For Homebrew installed bzr since not using Homebrew's Python:
# export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# JRuby preloader
# export JAVACMD=`which drip`
# export DRIP_INIT_CLASS=org.jruby.main.DripMain

#alias pms="osascript ~/Development/styleterm.scpt 'Red Sands'; ssh deploy@primus_staging; osascript ~/Development/styleterm.scpt 'Pro'"
#alias pmp="osascript ~/Development/styleterm.scpt 'Red Sands'; ssh deploy@primus_production; osascript ~/Development/styleterm.scpt 'Pro'"

# XQuartz path
export CPPFLAGS=-I/opt/X11/include
# CC=/usr/local/bin/gcc-4.2

# Node.js NPM binaries
export PATH=$PATH:/usr/local/share/npm/bin

# added by travis gem
source /Users/nathany/.travis/travis.sh

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# export ANDROID_HOME=/usr/local/opt/android-sdk

# eval "$(gh alias -s)"
