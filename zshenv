# zshenv - sourced on all invocations of the shell

# Go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/src/go.googlesource.com/go1.11/bin:$GOPATH/bin
export GOROOT_BOOTSTRAP=$GOPATH/src/go.googlesource.com/go1.4

# Rust (rustup, cargo, rustc, rustdoc)
export PATH=$PATH:$HOME/.cargo/bin

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin":$PATH
