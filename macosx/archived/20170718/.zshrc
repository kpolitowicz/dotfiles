# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kpolitowicz"

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
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git hub brew rbenv gem bundler rails cap vagrant kpolitowicz)

## rails3
# rc - rails console
# rd - rails destroy
# rdb - rails dbconsole
# rdbm - rake db:migrate db:test:clone
# rg - rails generate
# rp - rails plugin
# rs - rails server
# rsd - rails server --debugger
# devlog - tail -f log/development.log
# rdm - rake db:migrate
# rdr - rake db:rollback

## bundler
# be - bundle exec
# bi - bundle install
# bu - bundle update

## git
# alias g='git'
# alias gst='git status'
# alias gl='git pull'
# alias gup='git fetch && git rebase'
# alias gp='git push'
# gdv() { git diff -w "$@" | view - }
# alias gc='git commit -v'
# alias gca='git commit -v -a'
# alias gco='git checkout'
# alias gcm='git checkout master'
# alias gb='git branch'
# alias gba='git branch -a'
# alias gcount='git shortlog -sn'
# alias gcp='git cherry-pick'
# alias glg='git log --stat --max-count=5'
# alias glgg='git log --graph --max-count=5'
# alias gss='git status -s'
# alias ga='git add'
# alias gm='git merge'
# alias grh='git reset HEAD'
# alias grhh='git reset HEAD --hard'
# alias ggpull='git pull origin $(current_branch)'
# alias ggpush='git push origin $(current_branch)'
# alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR=/usr/local/bin/vim

export PATH="$PATH:$HOME/bin"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

