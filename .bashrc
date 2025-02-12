#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias transparent='python /home/jacob/dotfiles/transparent_window.py'
alias ls='lsd'
alias get_idf=". ~/esp/esp-idf/export.sh"
alias fml="sudo systemctl restart display-manager"
alias syu="sudo pacman -Syu"
alias open="xdg-open"

PS1='[\u@\h \W]\$ '

eval "$(thefuck --alias)"

#autorun java
jcar() { javac $1 && java $1 ; } 

#cd then lsd
cds() { cd "$@" && lsd; }
