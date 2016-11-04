export PATH=$PATH:/usr/local/share/python
export PATH=$PATH:/Users/peterzainzinger/.cargo/bin
export PATH="$HOME/.cargo/bin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF
alias vimrc='vim ~/.vimrc'
alias nvimrc='nvim ~/.nvimrc'
alias tmuxconf='nvim ~/.tmux.conf && tmux source-file ~/.tmux.conf && echo updated tmux config' 
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

