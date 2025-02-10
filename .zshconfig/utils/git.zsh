function gadd
{
    target=${1:-"."}
    git add $target
}

function gcommit
{
    desc=${1:-"Update"}
    git commit -m $desc
}

function gpush
{
    desc=${1:-"Update"}
    gadd && gcommit $desc && git push
}

alias gw="gh repo view --web"
alias prw="gh pr view --web"

alias prc="gh pr create --fill-verbose && prw"

alias grc="gadd && gcommit 'Init' && gh repo create -s . -r origin --public --push && gw"
alias grcp="git add . && git commit -m 'Init' && gh repo create -s . -r origin --private --push && gw"

alias gpom="git pull origin master"
alias gpmm="git merge --no-ff origin/master"

alias gpoma="git pull origin main"
alias gpmma="git merge --no-ff origin/main"
