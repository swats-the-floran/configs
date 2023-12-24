# to update settings in an open zsh instance use next command
# source ~/.zshrc

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
alias :q="exit"  # vim like exit

# git
alias ga="git add"
alias gd="git diff"
alias gs="git status"
alias gic="git commit"
alias gill="git pull"
alias glog="git log"
alias gmain="git checkout main && gill"
alias gbname="git rev-parse --abbrev-ref HEAD"  # get branch name
alias gish="git push"
function gishb() { git push --set-upstream origin $( gbname ) }  # push new current branch
alias gout="git checkout"
function goutb() { git pull && git checkout -b $1 }

# python
alias invenv="source venv/bin/activate"
alias pyvenv="python -m venv venv && invenv"
alias pinit="pip install -r requirements.txt"
alias pinst="pip install"
alias preeze='pip freeze'

# docker
# doc- prefix for docker and d- for docker sompose
alias dps="docker compose ps"
alias dlogs="docker compose logs"
alias docstop="docker stop \$(docker ps -q)"  # stop all launched containers
alias dup="docker compose up --build"
alias ddown="docker compose down"
alias ddup="docker compose -f docker-compose-dev.yml up --build"
function drm() { docker rm $1 }
function drmi() { docker rmi $1 }
function incon() { docker exec -it $1 bash }  # enter cintainer bash
function incons() { docker exec -it $1 sh }  # enter container sh

# file management
alias ls="ls -A --color --group-directories-first"
alias ды="ls"
function lsd() { cd $1 && ls }

