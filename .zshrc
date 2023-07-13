# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# shell
alias :q="exit"

# git
alias ga="git add"
alias gd="git diff"
alias gs="git status"
alias gic="git commit"
alias gish="git push"
alias gill="git pull"
alias glog="git log"

# python
alias invenv="source venv/bin/activate"
alias pyvenv="python -m venv venv"

# docker
alias dup="docker-compose up --build"
alias ddup="docker-compose -f docker-compose-dev.yml up --build"

# file management
alias ды="ls -a --color --group-directories-first"
alias ls="ls -a --color --group-directories-first"
function lsd() {
    cd $1 && ls -a --color --group-directories-first
}
