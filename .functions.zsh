alias ls='ls --color'

source ~/.private/con.zsh

source ~/.zshutils/nvim.zsh
source ~/.zshutils/sessions.zsh
source ~/.zshutils/shopify.zsh
source ~/.zshutils/git.zsh
source ~/.zshutils/python.zsh

alias stowf="~/dotfiles/stow.sh"
alias zshrc="cd ~/dotfiles && vim && stowf && gpush && zsh -c 'clear'"

source ~/.private/ssh.zsh

function mkcd
{
  command mkdir $1 && cd $1
}
