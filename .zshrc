# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
export PATH="/opt/hsouromebrew/opt/sqlite/bin:$PATH"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

alias deploy_dev="cd ~/Code/deployment && ansible-playbook deploy_dev.yml"
alias deploy_prod="cd ~/Code/deployment && ansible-playbook deploy_prod.yml"
alias dscorch="docker system prune -a --volumes"
alias dcb="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml -f ~/Code/local-dev-environment/transient-containers.yml build"
alias dcup="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml up --remove-orphans -d"
alias dcupall="/Users/nicholasfieschko/Code/local-dev-environment/start-services-only.sh && docker-compose -f /Users/nicholasfieschko/Code/local-dev-environment/transient-containers.yml up -d && docker-compose logs -f titan-migration"
alias dcupalltop="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml -f ~/Code/local-dev-environment/transient-containers.yml up -d &>/dev/null &; ctop"
alias dcdn="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml down"
alias dcdnall="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml -f ~/Code/local-dev-environment/transient-containers.yml down"
alias dcps="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml -f ~/Code/local-dev-environment/transient-containers.yml ps"
alias dcl="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml -f ~/Code/local-dev-environment/transient-containers.yml logs"
alias dcx="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml -f ~/Code/local-dev-environment/transient-containers.yml exec"
alias dcs="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml stop"
alias dcsall="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml -f ~/Code/local-dev-environment/transient-containers.yml stop"
alias dcrm="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml rm"
alias dcrmall="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml -f ~/Code/local-dev-environment/transient-containers.yml rm"
alias dcr="docker-compose -f ~/Code/local-dev-environment/docker-compose.yml restart"
alias dnetls="docker network ls"
alias dneti="docker network inspect"
alias services="/Users/nicholasfieschko/Code/local-dev-environment/start-services-only.sh"
alias trans="docker-compose -f /Users/nicholasfieschko/Code/local-dev-environment/transient-containers.yml up -d && docker-compose logs -f titan-migration"
alias s="git status"
alias addall="git add -A"
alias ystart="yarn start"
alias clone="git clone"
alias co="git checkout"
alias cherry-pick="git cherry-pick"
alias cherry="git cherry-pick"
alias push="git push"
alias pull="git pull"
alias commit="git commit -m"
alias reset="git reset"
alias newb="git checkout -b"
alias up="git push -u origin HEAD"
alias add="git add"
alias branch="git --no-pager branch"
alias merge="git merge"
alias composer="~/composer/composer"
alias renamebranch="git branch -M"
alias stash="git stash"
alias clean="git clean -fd"
alias revert="git revert"
alias d="git --no-pager diff"
alias dc="git --no-pager diff --cached"
alias ytest="yarn && yarn test --watchAll"
alias phpunit="/Users/nicholasfieschko/.composer/vendor/bin/phpunit"
alias phpunitwatch="/Users/nicholasfieschko/.composer/vendor/bin/phpunit-watcher"
alias testwatch="/Users/nicholasfieschko/.composer/vendor/bin/phpunit-watcher watch"
alias addd="git add -A && git --no-pager diff --cached"
alias adddc="git add -A && git --no-pager diff --cached"
alias sls="npx serverless"
alias serverless="npx serverless"
alias lambdatest="npx serverless invoke local -f"

df() {
  git diff $1 >~/latest-diff.diff && code ~/latest-diff.diff
}

dfc() {
  git diff --cached $1 >~/latest-diff.diff && code ~/latest-diff.diff
}

adddf() {
  git add -A && git diff --cached $1 >~/latest-diff.diff && code ~/latest-diff.diff
}

rebaselast() { # param 1 is number of commits back
  git rebase --interactive HEAD~$1
}

track() {
  if [[ -n $1 ]]; then
    git branch --set-upstream-to=origin/$1 $1
  else
    git branch --set-upstream-to=origin/$(git branch --show-current) $(git branch --show-current)
  fi
}

logs() {
  git log --oneline -10 "${@}" | cat
}

dclogs() { # param 1 is docker container name
  docker-compose logs -f $1
}

dcbash() { # param 1 is docker container name
  docker-compose -f /Users/nicholasfieschko/Code/local-dev-environment/transient-containers.yml \
    exec -e "TERM=xterm-256color" \
    -it $1 bash
}

dcshell() { # param 1 is docker container name
  docker-compose -f /Users/nicholasfieschko/Code/local-dev-environment/transient-containers.yml \
    exec -e "TERM=xterm-256color" \
    -it $1 sh
}

rebuild() {
  NO_CACHE=0
  while getopts ":s" opt; do
    case $opt in
    s)
      NO_CACHE=1
      ;;
    esac
  done
  shift $OPTIND-1

  docker-compose -f ~/Code/docker-compose.yml stop "${@}"
  docker-compose -f ~/Code/docker-compose.yml rm -f "${@}"
  if [ "$NO_CACHE" -gt 0 ]; then
    dcb --no-cache "${@}"
  else
    dcb "${@}"
  fi
  dcup -d --remove-orphans "${@}"
}

switch_php() {
  if [ -z "$1" ]; then
    echo "You need to provide the version to switch to"
    return
  fi
  if [ "$1" = "8.2" ] || [ "$1" = "8" ]; then
    VERSION="8.2"
  elif [ "$1" = "7.4" ] || [ "$1" = "7" ]; then
    VERSION="7.4"
  else
    echo "Invalid Version argument provided: $1"
    echo "Defaulting to 8.2..."
    VERSION="8.2"
  fi
  brew unlink php@8.2
  brew unlink php@7.4
  brew link "php@$VERSION"
  sed -i "" "s|export PATH=\"\/usr\/local\/opt\/php\@.*\/|export PATH=\"\/usr\/local\/opt\/php\@$VERSION\/|g" "$HOME/.zshrc"
  source "$HOME/.zshrc"
}

portKill() {
  kill -9 $(lsof -ti:$1)
}

whosUsingPort() {
  lsof -i :$1
}

# Update the target branch and then switch to it
function upco() {
  git fetch origin $1:$1 && git checkout $1
}

# Update the target branch and then merge it into the current branch
function upmerge() {
  git fetch origin $1:$1 && git merge $1
}
# export VOLTA_HOME="$HOME/.volta"
# # export PATH="$VOLTA_HOME/bin:$PATH"
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# export PATH="$(pyenv root)/shims:$PATH"
# source /Users/nick/.config/op/plugins.sh

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/nicholasfieschko/Library/Application Support/Herd/config/php/83/"

# Herd injected PHP binary.
export PATH="/Users/nicholasfieschko/Library/Application Support/Herd/bin/":$PATH

# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/nicholasfieschko/Library/Application Support/Herd/config/php/74/"

# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/nicholasfieschko/Library/Application Support/Herd/config/php/82/"

# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/nicholasfieschko/Library/Application Support/Herd/config/php/81/"
# pnpm
export PNPM_HOME="/Users/nick/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval $(thefuck --alias)
eval "$(gh copilot alias -- zsh)"

eval "$(rbenv init - zsh)"
FPATH=~/.rbenv/completions:"$FPATH"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
