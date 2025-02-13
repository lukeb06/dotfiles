function get_session_root
{
    rg session_root ~/.tmuxifier/layouts/$1.session.sh | sed -r "s/session_root .(.*)?./\1/g" | sed -r "s/~/\/Users\/lukebarrier/g" 
}

function preview_session
{
    ls --color -lAh $(get_session_root $1)
}

function preview_session_config
{
    cat ~/.tmuxifier/layouts/$1.session.sh
}

alias tmuxs='tmuxifier s'
alias tmuxls='tmuxifier ls'
alias tmuxes='tmuxifier es'

function fzf_sessions
{
    previewer=${1:-"preview_session {}"}
    tmuxls | fzf --preview="$previewer"
}

alias fzf_sessions_config='fzf_sessions "source ~/.zshconfig/utils/sessions.zsh; preview_session_config {}"'

alias tmuxl='tmuxs $(fzf_sessions)'
alias tmuxe='tmuxes $(fzf_sessions_config)'

alias sl='tmuxl'
alias se='tmuxe'

function tmuxc
{
    cp ~/.tmuxifier/layouts/base.session.sh ~/.tmuxifier/layouts/$1.session.sh && vim ~/.tmuxifier/layouts/$1.session.sh
}

function seshs
{
    sesh connect $(sesh list | fzf)
}


function sls
{
    content1=$(tmux ls)
    content2=$(tmuxls)
    content3=$(zoxide query -l)
    echo "$content1\n$content2\n$content3"
}

function slsfzf
{
    content1='[sesh]'
    content2=$(tmuxls)

    echo "$content1\n$content2" | fzf --preview="source ~/.zshconfig/utils/sessions.zsh; preview_session {}"
}

function ss
{
    option=$(slsfzf)
    if [[ $option == "[sesh]" ]]; then
        seshs
    else
        tmuxs $option
    fi
}
