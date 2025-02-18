alias ls='ls --color'

source ~/.zshconfig/private/con.zsh

source ~/.zshconfig/utils/con.zsh
source ~/.zshconfig/utils/nvim.zsh
source ~/.zshconfig/utils/sessions.zsh
source ~/.zshconfig/utils/shopify.zsh
source ~/.zshconfig/utils/git.zsh
source ~/.zshconfig/utils/python.zsh

source ~/.zshconfig/utils/battery.zsh

alias stowf="~/dotfiles/scripts/stow.sh"
alias zshrc="cd ~/dotfiles && vim && stowf && gpush && zsh -c 'clear'"

source ~/.zshconfig/private/ssh.zsh

function mkcd
{
  command mkdir $1 && cd $1
}
