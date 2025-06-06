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
# alias code='codium'
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
alias mkenv='python3 -m venv .venv'
alias startenv='source .venv/bin/activate && which python3'
alias stopenv='deactivate'
alias jn='jupyter notebook'

# Use docker without a root-equivalent docker group
#alias docker='sudo docker'

# Android emulators
# It may need to be changed according to Android Studio version
alias nexus5='emulator @Nexus_5X_API_29 &'
alias pixel='emulator @Pixel_8_API_30 &'

# terminal copy to / paste from clipboard
alias pbcopy='xsel --input --clipboard'
alias pbpaste='xsel --output --clipboard'

alias docker='sudo docker'
