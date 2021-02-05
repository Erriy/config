export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ys"

plugins=(git z)

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

source $ZSH/oh-my-zsh.sh

