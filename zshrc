#-----------------# Environment #----------------------------------------------#
export EDITOR='nvim'

# PostgreSQL
PATH="dummypath:$PATH"

XDG_CONFIG_HOME="$HOME/.config"

#export TERM=alacritty

export GREP_OPTIONS='--color=always'

#-----------------# Prompt #---------------------------------------------------#

# %? is the return code of the last command
# %M is the hostname
# %n is the username
# %~ is the current directory, the number is the number of directories to show
PROMPT='%? [%M@%F{yellow}%n%f %F{blue}%3~%f]$ '

# Autosuggestions
source "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Syntax highlighting
source "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

#-----------------# Aliases #--------------------------------------------------#
alias ls='ls -a --color=auto'
alias vim='nvim'
alias top='btop'
alias bat='bat -pn --theme Nord'

alias seqtk='~/biotools/seqtk/seqtk'
alias dgeapy='~/Dropbox/project/dgeapy/dgeapy/dgeapy.py'

#-----------------# Note taking #----------------------------------------------#
#
n() { vim ~/.notes/"$*" }

nls() { LS -p ~/.notes/ | grep -v / | grep "$*" }

nr() { rm ~/.notes/"$*" }

ns() { rg -iN -C 5 "$*" ~/.notes/* }

nv() { vim ~/.notes/ }

# new note
nn() {
    NOTE_TITLE=$1
    if [ -z "$NOTE_TITLE" ]; then
        NOTE_TITLE=quicknote-$(date +%Y-%m-%d-%H-%M)
    fi
    NOTE_FILE=~/.notes/$NOTE_TITLE.md
    cat <<EOF > $NOTE_FILE
---
creationdate: $(date +%Y-%m-%d) $(date +%H:%M)
lastmod: $(date +%Y-%m-%d) $(date +%H:%M)
tags:
source:
---

# dummytitle

EOF
    vim $NOTE_FILE
}

alias t='n 0.TODO.md'
alias tls='bat ~/.notes/0.TODO.md'

nh() {
    echo "Notes help"
    echo ""
    echo "n    create a new note"
    echo "nn   create a new note with template"
    echo "nls  list notes"
    echo "nr   remove a note"
    echo "ns   search notes"
    echo "nv   open nwtrw on notes dir"
    echo "t    edit TODO"
    echo "tls  list TODO"
    echo "nh   this help"
}


#-----------------# Development #----------------------------------------------#
# Cargo
. "$HOME/.cargo/env"

CONDARC="$XDG_CONFIG_HOME/.condarc"
# >>> conda initialize >>>
# Dummy conda initialization
# <<< conda initialize <<<
#

