My personal dotfiles managed with [rcm](https://github.com/thoughtbot/rcm).

```console
brew tap thoughtbot/formulae
brew install rcm
```

### ZSH

Latest version:

```console
brew install zsh
chsh -s /usr/local/bin/zsh
```

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Pure prompt](https://github.com/sindresorhus/pure)

### Go

#### rietveld code review

.hg/hgrc for specific repos:

```
[extensions]
codereview = ~/src/code.google.com/p/go/lib/codereview/codereview.py
```

### hidden pkg

```console
chflags hidden ~/pkg
```
