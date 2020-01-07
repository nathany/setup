# zshenv - sourced on all invocations of the shell

# Go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/src/go.googlesource.com/go1.13/bin:$GOPATH/bin
export GOROOT_BOOTSTRAP=$GOPATH/src/go.googlesource.com/go1.4
export GO111MODULE=auto
export GO15VENDOREXPERIMENT=0

# Rust (rustup, cargo, rustc, rustdoc)
export PATH=$PATH:$HOME/.cargo/bin

# Ruby
export PATH=$PATH:/usr/local/lib/ruby/gems/2.5.0/bin

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin":$PATH
