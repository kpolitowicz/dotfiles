# macosx setup

## key mapping

1. Install Karabiner (https://pqrs.org/osx/karabiner/)
1. Import Capslock macros (https://pqrs.org/osx/karabiner/complex_modifications/)
1. Add a rule to make capslock act as Esc and Ctrl

## general setup

1. Install Xcode from the app store
1. Install ITerm2 (https://iterm2.com/)
1. Install Homebrew (https://brew.sh/)

## zsh

1. Run `brew install zsh git hub`
1. Install oh-my-zsh (https://ohmyz.sh/)
1. Copy `.zshrc` to home dir (backup the original file)

## vim

1. Run `brew install vim the_silver_searcher`
1. Copy `.vimrc` home dir (backup the original file)
1. Install vim-plug (https://github.com/junegunn/vim-plug)
1. Open vim and do :PlugInstall

## tmux

1. Run `brew install tmux ruby-build rbenv reattach-to-user-namespace`
1. Run `rbenv install 2.6.5` (or any latest version)
1. Run `rbenv global 2.6.5`
1. Run `gem install tmuxinator`
1. Copy `battery` executable to `~/bin/`
1. Copy `.tmux.conf` to home dir
1. Run `tmuxinator new someproject` and adjust the config
1. Install tpm (https://github.com/tmux-plugins/tpm)
1. Run `tmuxinator someproject`
1. Do PREFIX I (Ctrl+a Shift+i) to install other plugins

