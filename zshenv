# zshenv - sourced on all invocations of the shell

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH

# Go
export GOPATH=$HOME
export PATH=$PATH:$HOME/src/code.google.com/p/go/bin:$HOME/bin

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin":$PATH

# RVM for Ruby
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Node.js NPM binaries
export PATH=$PATH:/usr/local/share/npm/bin
