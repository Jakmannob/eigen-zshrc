# History settings
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000

# Using vim keybindings
bindkey -v

# zsh completion system setup
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit


# Directory browsing aliases
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -l -a"
alias c1="cd .."
alias c2="cd ../.."
alias c3="cd ../../.."
alias c4="cd ../../../.."
alias c5="cd ../../../../.."
alias ctree='temporary_function(){ {tree -C "$@" | less -r}; unset -f temporary_function; }; temporary_function'

# Filedump aliases
alias rless='less -r'
alias colorobjdump='temporary_function(){ {objdump -d -M intel --disassembler-color=on "$@" | less -r}; unset -f temporary_function; }; temporary_function'
alias ccat='temporary_function(){ {bat --color always "$@" | cat}; unset -f temporary_function; }; temporary_function'
alias grepsurr='temporary_function(){ {ccat "$1" | grep -B 5 -A 5 "${@:2}"}; unset -f temporary_function; }; temporary_function'

# Fun aliases
alias peng="{fortune | cowsay -f tux} | lolcat"
# A meaningless command that creates useful-seeming output to disguise procrastination
alias meaningless="ll /; {ccat ~/.zshrc | grep -B 10 -A 5 ccat}; ls /etc"

# git aliases
alias gadd="git add -A && gstat"
alias gstat="git status"
alias gcomm="git commit -m"
alias gpush="git push"
alias gpull="git pull"
alias glog="git log --oneline"
alias gclone="git clone"
alias gcheck="git checkout"
alias gbranch="git branch"
alias grest="git restore"
alias gunstage="git restore --staged"
alias gunstagen="git rm --cached"
alias gseename="git config --get user.name"
alias gsetname="git config user.name"
alias gseeemail="git config --get user.email"
alias gsetemail="git config user.email"
alias glrun="gitlab-runner run"

# Networking aliases
alias myip="host myip.opendns.com resolver1.opendns.com"
# Pings the google DNS server
alias pingout="ping -c4 8.8.8.8"

# PDF aliases
alias reducepdfsize='pdfpsconv(){ {pdf2ps "$@"} | ps2pdf; unset -f pdfpsconv; }; pdfpsconv'
# Converts a .md file to PDF. Use this alias with 2 arguments: output-filename input-filename
alias betterpandoc="pandoc -V geometry:margin=1in -V papersize:a4 -o"


# Diverse aliases
alias virtualbox="modprobe vboxdrv && virtualbox"
alias seek-process="ps -e | grep --ignore-case"
alias zclear="cd ~ && clear && source $HOME/.zshrc"
alias replace-spaces="find -name \"* *\" -type d | perl-rename 's/ /_/g' && find -name \"* *\" -type f | perl-rename 's/ /_/g'"
alias py="python3"


# Suffix aliases (for binding file extensions to programs)
alias -s {tex,java,py,ipynb}=vim
alias -s {ipynb}=code


# MOTD lines to feel right at home
# Every arch user needs to be greeted by screenfetch. It's the rules.
screenfetch
peng
