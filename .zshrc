export ZSH=~/.oh-my-zsh
export PS1="\W \$"
set editing-mode vi

# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin:/usr/local/go/bin:/usr/texbin:/Applications/Postgres.app/Contents/Versions/9.3/bin:/path/to/compiled/postgresql/bin:/usr/local/Cellar/go/1.2.1/libexec/bin:/Users/peterzainzinger/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias youtube-mp3="youtube-dl --extract-audio --audio-format mp3 "

export NVM_DIR="/Users/peterzainzinger/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export VISUAL=vim
export EDITOR="$VISUAL"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/go/bin" 

export PATH="$PATH:$HOME/Infra/helm/dm" 

# The next line updates PATH for the Google Cloud SDK.
source '/Users/peterzainzinger/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/peterzainzinger/google-cloud-sdk/completion.zsh.inc'
export NODE_PATH=$NODE_PATH:/Users/peterzainzinger/.nvm/versions/node/v5.0.0/lib/node_modules

export PATH="$HOME/.cargo/bin:$PATH"

export PATH=$PATH:/usr/local/share/python
export PATH=$PATH:/Users/peterzainzinger/.cargo/bin
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF
alias vimrc='vim ~/.vimrc'
alias nvimrc='nvim ~/.nvimrc'
alias tmuxconf='nvim ~/.tmux.conf && tmux source-file ~/.tmux.conf.local && echo updated tmux config' 
alias zprofile='nvim ~/.zprofile && source ~/.zprofile && echo updated zprofile'
alias c='clear'
alias o='open'
alias gc='git commit'
alias gd='git diff'
alias ga='git add -A'
export PATH=/usr/local/bin:$PATH
export TERM="screen-256color"
alias tmux="tmux -2"
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:~/go/bin
#alias tmux='TERMINFO=/usr/share/terminfo/x/xterm-16color TERM=xterm-16color tmux -2'
export PATH="$PATH:/usr/local/texlive/2015/bin/universal-darwin"
export GITHUB_API_TOKEN=ef2c3a43a3e5bf3f2a708810a3d5ca14d09cc55b
export GITHUB_USERNAME=PeterZainzinger
export RUST_SRC_PATH=~/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src

encodeb64() {
   echo -n "$1" | base64 
}
alias encode64=encodeb64

decodeb64() {
   echo -n "$1" | base64 --decode
}
alias decode64=decodeb64

cencodeb64() {
   echo -n "$1" | base64 | pbcopy
}
alias cencode64=cencodeb64
source ~/.cargo/env
