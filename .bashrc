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
alias cl="clear && ls"
PS1='[\u@\h \W]\$ '

eval "$(thefuck --alias)"

#autorun java
jcar() { javac $1 && java $1 ; } 

#cd then lsd
cds() { cd "$@" && lsd; }

#compress dir in parallel
tarxz() {
  if [[ $# -ne 2 ]]; then
    echo "Usage: tarxz <folder> <output.tar.xz>"
    return 1
  fi

  folder_size=$(du -sb "$1" | awk '{print $1}')  # Get total folder size in bytes

  tar -cf - "$1" | pv -s "$folder_size" -pterb -i 0.5 | pixz  > "$2"
}


