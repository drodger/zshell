# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.cargo/bin:/usr/local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Path to your oh-my-zsh installation.
  export ZSH="/home/derek/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    aws
    colored-man-pages
    command-not-found
    common-aliases
    django
    fd
    fzf
    git
    git-prompt
    ssh-agent
    tmux
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id:~/.ssh/drodger_github_rsa"

EXTENDED_HISTORY="true"
APPEND_HISTORY="true"
AUTO_CD="true"
# SHARE_HISTORY="false"
setopt noincappendhistory
setopt nosharehistory

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cl='/opt/coreutils/bin/ls'
# alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias an='cd ~/code/ansible'
alias ad='cd ~/code/erezadmin'
alias hx='hexdump -C'
alias nv='cd ~/.config/nvim'
alias n='nvim'
alias nq='nvim-qt'
alias c='clear'
alias s='sudo'
alias venv='source ./venv/bin/activate'
alias :e='nvim'
alias g='git'
alias ez='cd ~/code/erezlife'
alias an='cd ~/code/ansible'
alias testpy='venv/bin/python -b -Wall manage.py test --no-input --keepdb --parallel'
alias psql='psql -d rcr'
export BAT_PAGER="less"
source /home/derek/zshell/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/derek/zshell/zsh-autosuggestions/zsh-autosuggestions.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/derek/code/erezlife/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/derek/code/erezlife/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/derek/code/erezlife/node_modules/tabtab/.completions/sls.zsh ]] && . /home/derek/code/erezlife/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/derek/code/erezlife/node_modules/tabtab/.completions/slss.zsh ]] && . /home/derek/code/erezlife/node_modules/tabtab/.completions/slss.zsh

export EREZLIFE_CONFIG_HOST="localhost"
export EREZLIFE_CONFIG_KEY="localhost"
export EREZLIFE_HOST="localhost"

fpath+=${ZDOTDIR:-~}/.zsh_functions
eval "$(starship init zsh)"

function prev() {
  PREV=$(fc -lrn | head -n 1)
  sh -c "pet new `printf %q "$PREV"`"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /home/derek/.config/broot/launcher/bash/br
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
