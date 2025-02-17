function gogit
{
    user=$1
    repo=$2
    dir=${3:-"$(pwd)/$repo"}

    mkdir -p ~/dotfiles/.gogit
    mkdir -p ~/dotfiles/.gogit/$user

    if [[ -d ~/dotfiles/.gogit/$user/$repo ]]; then
        echo "Repo already exists"
        return
    fi

    git clone https://github.com/$user/$repo.git ~/dotfiles/.gogit/$user/$repo
    ln -s ~/dotfiles/.gogit/$user/$repo $dir
}
