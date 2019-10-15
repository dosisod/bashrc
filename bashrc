#allows for control+s in vim
stty -ixon

#sets mdv markdown viewer colorschemes
export MDV_CODE_THEME=528.9419
export MDV_THEME=960.847

#allows for easy viewing of mdv
function mdd() { mdv "$1" | less -R; }

#my ps1 prompt
export PS1="\[\e[1;31m\]\u\[\e[1;31m\]@\[\e[1;31m\]\h\[\e[1;37m\]:\[\e[1;34m\]\w\[\e[1;34m\]/\[\e[1;34m\]$ \[\e[0m\]"

alias p3="python3"

#makes accessing config files easier
alias vimrc="vim.gtk ~/.vimrc"
alias bashrc="vim.gtk ~/.bashrc"
alias v="vim.gtk -p"
alias vv="vim.gtk -s .vim"

#git related aliases
alias gpom="git push origin master"
alias gpo="git push origin"
alias gp="git push"
alias gcm="git commit -m"
alias ga="git add"
alias gd="git diff"
alias gs="git status"
alias gl="git log --name-only"
alias gc="git checkout"
alias grm="git rm"
alias goof="git reset --soft HEAD~1"
function gg() { cd ~/Git/$@; }

#system related aliases
alias :q="exit"
alias cls="clear&&ls"
alias gls="clear&&git status"
alias c="clear"
alias cdd="cd .."
alias grepr="grep -r . -e"
alias phps="php -S 0.0.0.0:1234"
alias pp3="pip3 install"
alias lsl="ls -alh"
alias lst="tree -fi | grep -v 'pycache'"
alias psx="ps aux | grep"
alias vtd="python3 /home/noot/Git/vootodoo/main.py"
