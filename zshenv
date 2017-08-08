# zshenv - sourced on all invocations of the shell

# Go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/src/go.googlesource.com/go1.8/bin:$GOPATH/bin
export GOROOT_BOOTSTRAP=$GOPATH/src/go.googlesource.com/go1.4

export PATH=$PATH:$GOPATH/src/github.com/uber/go-torch/FlameGraph

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin":$PATH
