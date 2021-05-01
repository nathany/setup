# zshenv - sourced on all invocations of the shell

# Go
export GOPATH=$HOME
export PATH=$PATH:$HOME/src/go.googlesource.com/go1.16/bin:$GOPATH/bin
export GOROOT_BOOTSTRAP=$HOME/src/go.googlesource.com/go1.4
export GO111MODULE=auto
export GO15VENDOREXPERIMENT=0

# Module configuration for non-public modules
# https://golang.org/cmd/go/#hdr-Module_configuration_for_non_public_modules
# export GOPRIVATE=github.com/...

# Rust (rustup, cargo, rustc, rustdoc)
export PATH=$PATH:$HOME/.cargo/bin
source "$HOME/.cargo/env"

# Ruby
export PATH=$PATH:/usr/local/lib/ruby/gems/2.5.0/bin

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin":$PATH
