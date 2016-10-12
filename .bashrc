t
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}
export PS1="\w \$(parse_git_branch)\$ "
export EDITOR='atom --wait'
export VISUAL='atom --wait'

# Pyenv
export PYENV_ROOT=/usr/local/var/pyenv/3.5.1
eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"

# Rbenv
export RBENV_ROOT=/usr/local/var/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# php-version
source $(brew --prefix php-version)/php-version.sh && php-version 7.0

