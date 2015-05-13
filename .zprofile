export NDK_HOME=/usr/local/Cellar/android-ndk/r10d
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_NDK_HOME=$NDK_HOME
export PATH=$PATH:$NDK_HOME
#export PATH=$PATH:$ANDROID_HOME
export PATH=$PATH:/usr/local/share/python
export PATH=$PATH:/Users/peterzainzinger/.rvm/gems/ruby-2.1.2/gems/t-2.8.0/bin
export PATH=$PATH:/usr/local/pyhtondebug
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF
alias vimrc='vim ~/.vimrc'
alias tmuxconf='vim ~/.tmux.conf && tmux source-file ~/.tmux.conf && echo updated tmux config' 
alias zprofile='vim ~/.zprofile && source ~/.zprofile && echo updated zprofile'
alias cdir='pwd|pbcopy'
alias vimplugin='vimrc && vim +PluginInstall'
alias c='clear'
alias cheatsheet='vi ~/lessons/vim/Cheatsheet.md'
export NVM_SYMLINK_CURRENT=true
alias bootRun='mvn spring-boot:run -Dspring.profiles.active=pglocal'
export NODE_PATH=$NODE_PATH:/usr/local/Cellar/node/0.12.1/libexec/npm/lib/node_modules
alias o='open'
alias gc='git commit'
alias gd='git diff'
alias ga='git add -A'
alias compmath='ssh e1326835@lva.student.tuwien.ac.at'
alias netconfig='ifconfig|less'
export PAGER=vimpager
alias less=$PAGER
alias zless=$PAGER
export PATH=/usr/local/bin:$PATH
source /usr/local/bin/virtualenvwrapper.sh
export TERM="screen-256color"
alias tmux="tmux -2"
alias pipall="pip install -r Requirements.txt"
alias home="cd ~"
POD_LOCAL_HOME=~/PodsLocal
export POD_LOCAL_HOME
alias python='python3'
