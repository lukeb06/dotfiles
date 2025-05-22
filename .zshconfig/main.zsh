alias ls='ls --color'

source ~/.zshconfig/utils/con.zsh
source ~/.zshconfig/utils/nvim.zsh
source ~/.zshconfig/utils/sessions.zsh
source ~/.zshconfig/utils/shopify.zsh
source ~/.zshconfig/utils/git.zsh
source ~/.zshconfig/utils/python.zsh

source ~/.zshconfig/utils/battery.zsh

alias stowf="~/dotfiles/scripts/stow.sh"
alias zshrc="cd ~/dotfiles && v && stowf && gpush && exec zsh"

function mkcd
{
  command mkdir $1 && cd $1
}
