export ANDROID_HOME=/home/peter/Android/Sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=${PATH}:/opt/flutter/bin
export PATH=${PATH}:/opt/flutter/bin/cache/dart-sdk/bin
export PATH=${PATH}:/home/peter/Android/Sdk/platform-tools/
export PATH=${PATH}:/usr/local/cuda/bin/

XDG_CURRENT_DESKTOP=Unity7

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

 xinput --set-prop 13 "Synaptics Palm Detection" 1
 xinput --set-prop 13 "Synaptics Scrolling Distance" -30, -30

