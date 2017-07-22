## no autocorrection
unsetopt correct_all

## git & hub

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

alias ggpullr='git pull --rebase origin $(current_branch)'
compdef ggpullr=git
alias ggpnpr='git pull --rebase origin $(current_branch) && git push origin $(current_branch)'
compdef ggpnpr=git
alias ggpush='git push origin $(current_branch)'
compdef _git ggpush=git-push

alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gar='git add . && git reset HEAD --hard'

alias gmm='git merge --no-ff'
compdef _git gmm=git-merge
alias glgc='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias g1='git log -1'
compdef _git g1=git-log

alias gcam='gca --amend -n'
compdef _git gcam=git-commit

alias git=hub
compdef _git hub=git

alias gprd='hub pull-request -b Nimonik:develop -h Nimonik:$(current_branch)'
compdef _git gprd=git-pull-request
alias gprm='hub pull-request -b Nimonik:master -h Nimonik:$(current_branch)'
compdef _git gprm=git-pull-request

## rails
alias tstlog='tail -f log/test.log'
alias rst='touch tmp/restart.txt'
#alias rdbm='rake db:migrate db:test:prepare'

alias caps='cap staging'
alias capn='cap newstaging'
alias capp='cap production'

alias cucf='CUCUMBER_FORMAT=pretty spring cucumber -r features/'
alias cwip='CUCUMBER_FORMAT=pretty spring cucumber --profile wip'
alias srspec='SPEC_OPTS="--format documentation" spring rspec'
