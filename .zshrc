# Path to your oh-my-zsh installation.
export ZSH=/Users/sspross/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew fabric osx pip python)

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias localhost='python -m SimpleHTTPServer'
# alias createvirtualenv='function _newvirtualenv(){ virtualenv env --prompt="($1)"; };_newvirtualenv'
alias deletemergedbranches='git branch --merged | grep -v \* | xargs git branch -D && git fetch -p'
alias ffw='cd ~/projects/flatfox-website/ && source env/bin/activate && cowsay flatfox-website'
alias ffc='cd ~/projects/flatfox-crawler/ && cowsay flatfox-crawler'

function unapplieddjangomigrations {
    if [ -f "manage.py" ]; then
        ./manage.py showmigrations --list | grep "\[ \]\|^[a-z]" | grep "[ ]" -B 1
    fi
}


# database settings
export MYSQL_USER=root
export MYSQL_PASSWORD=1234
export PGHOST=localhost
export PGUSER=sspross
export PGPASSWORD=''

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/sspross/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
#source '/Users/sspross/google-cloud-sdk/completion.zsh.inc'

# SSH targets with insta-tmux attach.
alias stage1="ssh -A www-data@flatfox01.nine.ch -t \"tmux a -t stage1 || tmux new -s stage1\""
alias stage2="ssh -A www-data@flatfox01.nine.ch -t \"tmux a -t stage2 || tmux new -s stage2\""
alias stage3="ssh -A www-data@flatfox01.nine.ch -t \"tmux a -t stage3 || tmux new -s stage3\""

# Better default tools
# alias ping='prettyping'
# alias cat='bat'
# alias du="ncdu --color dark -rr -x"
# alias help='tldr'
# alias grep='ack'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add ssh key
# ssh-add -K ~/.ssh/id_rsa

# Init node env
eval "$(nodenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sspross/Applications/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sspross/Applications/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sspross/Applications/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sspross/Applications/google-cloud-sdk/completion.zsh.inc'; fi

# pyenv stuff
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
