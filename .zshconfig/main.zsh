alias ls='ls --color'

source ~/.zshconfig/utils/con.zsh
source ~/.zshconfig/utils/nvim.zsh
source ~/.zshconfig/utils/sessions.zsh
source ~/.zshconfig/utils/shopify.zsh
source ~/.zshconfig/utils/git.zsh
source ~/.zshconfig/utils/python.zsh

source ~/.zshconfig/utils/battery.zsh

alias stowf="~/dotfiles/scripts/stow.sh"

alias nixbuild="sudo darwin-rebuild switch --flake ~/.config/nix#air"

# alias zshrc="cd ~/dotfiles && v && stowf && gpush && exec zsh"
# alias nixrc="cd ~/dotfiles/.config/nix && v && cd ~/dotfiles && stowf && sudo darwin-rebuild switch --flake ~/.config/nix#air && gpush && exec zsh"
# alias vimrc="cd ~/.config/nvim && v && gpush"
alias zshrc="cd ~/dotfiles && v && gpush && exec zsh"
alias nixrc="cd ~/.config/nix && v && gpush && nixbuild && exec zsh"
alias vimrc="cd ~/.config/nvim && v && gpush"
alias nvimrc="vimrc"


alias cl="clear"
alias c="clear"

function mkcd
{
  command mkdir $1 && cd $1
}
