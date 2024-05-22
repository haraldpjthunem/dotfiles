# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History control
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Aliases
alias ls='ls --color=auto'
alias ll='ls --color=auto -alF'
alias la='ls --color=auto -A'
alias l='ls --color=auto -CF'
alias x='view'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias h='history'
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
alias cp='cp -rv'
alias mv='mv -v'
alias mkdir='mkdir -pv'
alias code='codium'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias wget='wget -c'
# alias man='tldr' # Get original 'man' by using '\man'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
#alias sublime='/opt/sublime_text/sublime_text'
#alias np='notepadqq'
#alias r=ranger
#alias fp='/home/harald/Development/fpc-3.2.0/bin/fp'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# python
alias python='python3'
alias pip='pip3'
alias makeenv='python3 -m venv env'
alias actenv='source env/bin/activate && which python3'
alias deactenv='deactivate'

# Use docker without a root-equivalent docker group
#alias docker='sudo docker'

# Android emulators
# It may need to be changed according to Android Studio version
alias nexus5='emulator @Nexus_5X_API_29 &'
alias pixel='emulator @Pixel_8_API_30 &'

# terminal copy to / paste from clipboard
alias pbcopy='xsel --input --clipboard'
alias pbpaste='xsel --output --clipboard'

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

export ANDROID_HOME="$HOME/Development/android-sdk"
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"
export PATH="$JAVA_HOME/bin:$PATH:$HOME/Development/maven/bin:$HOME/.local/bin:$HOME/Development/flutter/bin:$HOME/.pub-cache/bin:$ANDROID_HOME/emulator"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/harald/.sdkman"
[[ -s "/home/harald/.sdkman/bin/sdkman-init.sh" ]] && source "/home/harald/.sdkman/bin/sdkman-init.sh"
