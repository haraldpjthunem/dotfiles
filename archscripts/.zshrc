# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# History control
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Alias definitions
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# Change up a variable number of directories
# E.g:
#   cu   -> cd ../
#   cu 2 -> cd ../../
#   cu 3 -> cd ../../../
function cu {
    local count=$1
    if [ -z "${count}" ]; then
        count=1
    fi
    local path=""
    for i in $(seq 1 ${count}); do
        path="${path}../"
    done
    cd $path
}

#-------------------------------------------------------------
# File & strings related functions, from
# http://www.tldp.org/LDP/abs/html/sample-bashrc.html
#-------------------------------------------------------------
# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }

# Find a file with pattern $1 in name and Execute $2 on it:
function fe() { find . -type f -iname '*'"${1:-}"'*' \
-exec ${2:-file} {} \;  ; }

export JAVA_HOME="$HOME/.sdkman/candidates/java/current"
export DEV_HOME="/media/DATA/Development"
export PATH="$DEV_HOME/fpc/bin:$DEV_HOME/miniforge3/bin:$DEV_HOME/maven/bin:$JAVA_HOME/bin:$PATH:$HOME/.local/bin:$HOME/.pub-cache/bin"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/harald/.sdkman"
[[ -s "/home/harald/.sdkman/bin/sdkman-init.sh" ]] && source "/home/harald/.sdkman/bin/sdkman-init.sh"
