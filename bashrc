export GREP_COLORS="ms=01;31:mc=01;31:sl=:cx=:fn=1;34:ln=32:bn=32:se=0"

#enable flask, disable dotnet telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export FLASK_DEBUG=1

export NODE_PATH=/usr/bin/node
export CHROME_BIN="/usr/bin/chromium-browser"

#disable certain files
export PYTHONSTARTUP=$HOME/.config/pythonrc.py
export LESSHISTFILE=/dev/null
export NODE_REPL_HISTORY=/dev/null

#allow for vi style movement
#set -o vi

#allows for control+s in vim
stty -ixon

#sets mdv markdown viewer colorschemes
export MDV_CODE_THEME=528.9419
export MDV_THEME=960.847

#allows for easy viewing of mdv
function mdd() { mdv "$1" | less -R; }

#my ps1 prompt
export PS1="\[\e[1;31m\]\u \[\e[1;34m\]\W \$(__current_branch=\$(git branch 2> /dev/null | grep -F \"*\" | cut -c 3-);if [ \"\$__current_branch\" == \"master\" ]; then echo \"\[\e[0;32m\](\$__current_branch) \"; elif [ ! -z \"\$__current_branch\" ]; then echo \"\[\e[0;33m\](\$__current_branch) \";fi)\[\e[38;5;244m\]$ \[\e[0m\]"

alias p3="python3"

#makes accessing config files easier
alias vimrc="vim.gtk -i NONE ~/.vimrc"
alias bashrc="vim.gtk -i NONE ~/.bashrc"
alias v="vim.gtk -i NONE"
alias vv="source .venv/bin/activate"
alias mvv="python3 -m venv .venv && source .venv/bin/activate"

#git related aliases
alias gpom="git push origin master"
alias gpo="git push origin"
alias gp="git push"
alias gcm="git commit -m"
alias ga="git add"
alias gd="git diff"
alias gdd="git diff --cached"
alias gs="git status"
alias gl="git log --name-only"
alias gc="git checkout"
alias grm="git rm"
alias goof="git reset --soft HEAD~1"
function gg() { cd ~/Git/$@; }

#system related aliases
alias src="source ~/.bashrc"
alias :q="exit"
alias cls="clear&&ls"
alias cgs="clear&&git status"
alias sl="ls"
alias r="./run"
alias c="clear"
alias p="cat"
alias ..="cd .."
alias plant="netstat -plant"
function mk() { mkdir $@ && cd $@; }
alias k9="kill -9"
alias g="_grep_wrapper"

function _grep_wrapper() {
	grep $@ --color=always --exclude-dir={\*.venv\*,\*node_modules\*,\*\.git\*,\*.\*py\*} | grep -v --color=always "Binary file";
}

function grepr() { _grep_wrapper -r $@ .; }
function greprf() { _grep_wrapper -rF $@ .; }

alias phps="php -S 0.0.0.0:1234"
alias pp3="pip3 install"
alias lsl="ls -Alh"
alias lst="tree -fi | grep -v 'pycache' | grep -v 'node_modules'"
alias psx="ps aux | grep"
alias vtd="python3 /home/noot/Git/vootodoo/main.py"
alias vimonous="python3 /home/noot/Git/vimonous/main.py"
alias tss="tsc --build tsconfig.json"
alias tsw="tsc --build tsconfig.json -w"
alias ccmake="cmake --build ."

alias chrome="chromium-browser"

function ggg() { g++ $@.cpp -o $@ && ./$@; }

#downloads most recent version of my bashrc/vimrc
function getbashrc() {
	curl https://raw.githubusercontent.com/dosisod/bashrc/master/bashrc > ~/.bashrc
}

function getvimrc() {
	curl https://raw.githubusercontent.com/dosisod/vimrc/master/vimrc > ~/.vimrc
}
