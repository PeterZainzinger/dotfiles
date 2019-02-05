export ZSH=~/.oh-my-zsh
export PS1="\W \$"
set editing-mode vi

ZSH_THEME="agnoster"

plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin:/usr/local/go/bin:/usr/texbin:/Applications/Postgres.app/Contents/Versions/9.3/bin:/path/to/compiled/postgresql/bin:/usr/local/Cellar/go/1.2.1/libexec/bin:/Users/peterzainzinger/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export VISUAL=nvim
export EDITOR="$VISUAL"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF

source ~/.zshalias

encodeb64() {
   echo -n "$1" | base64 
}
alias encode64=encodeb64

decodeb64() {
   echo -n "$1" | base64 --decode
}
alias decode64=decodeb64


prompt_context() {}



