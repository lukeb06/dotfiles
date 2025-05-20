alias py="python3"
alias venv="source .venv/bin/activate"
alias cvenv="py -m venv .venv && venv"
alias pip="py -m pip"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PIPENV_VENV_IN_PROJECT=1
