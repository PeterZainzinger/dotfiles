export ZSH=~/.oh-my-zsh
export PS1="\W \$"

set editing-mode vi
set -g status-keys vi

ZSH_THEME="agnoster"

plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin:/usr/local/go/bin:/usr/texbin:/Applications/Postgres.app/Contents/Versions/9.3/bin:/path/to/compiled/postgresql/bin:/usr/local/Cellar/go/1.2.1/libexec/bin:/Users/peterzainzinger/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

export PATH="$PATH:/opt/flutter/bin"
export PATH="$PATH:/opt/flutter/bin/cache/dart-sdk/bin"
export PATH="$PATH":"/opt/flutter/.pub-cache/bin"
export PATH="$PATH:/usr/bin/vendor_perl"
export PATH="$PATH:/home/peterz/.cargo/bin"

source $ZSH/oh-my-zsh.sh
source ~/.zlogin

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

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

export PATH="$PATH":"$HOME/.pub-cache/bin"
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

export NPM_TOKEN=z2beRc5zauExJyYPMoE27d9V2o+IFR2fR0UfUhTY3zg=


PATH="/home/peterz/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/peterz/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/peterz/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/peterz/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/peterz/perl5"; export PERL_MM_OPT;
export PATH=$PATH:~/bin
export PATH=$PATH:~/dotfiles/scripts
