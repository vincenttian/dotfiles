#
# System-wide Defaults for everything
#

if [ -f /etc/profile ]; then
        source /etc/profile
fi

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Completions are critical in interactive shells:
BASH_COMP_SP="/etc /usr/local/etc /opt/local/etc"
for conf_dir in $BASH_COMP_SP ; do
        if [ -f "$conf_dir/bash_completion" ] && [ -z "$BASH_COMPLETION" ] ; then               
                source "$conf_dir/bash_completion"
        fi
done

alias h?="history | grep"
 
#cd and ls in one
function cdl()
{
if [ "$*" = "" ]
then
cd
else
cd "$*";
fi
dir;
}

alias rad='screen -rad'

 #for travelling n directories backwards
 cd() {
   builtin cd "$*" && ls
 }
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias irssi="irssi -c irc.housing.berkeley.edu -p 6667"

# SSH
alias info290='cd ~/Documents/MATLAB/INFO290'
alias cs194='ssh -p 3022 datascience@127.0.0.1 -L 8888:127.0.0.1:8888'
alias cs194vm='VBoxHeadless --startvm "CS194VM"'
alias screen='SSH_AUTH_SOCK="/home/vincenttian/.ssh/.screen.auth.socket" screen'
alias resirc='ssh vincenttian@irc.housing.berkeley.edu'
alias resirct='ssh -f -N -L 6697:irc.housing.berkeley.edu:6697 vincenttian@irc.housing.berkeley.edu'
alias istargate='ssh -i ~/.ssh/id_stargate_rsa stargate'
alias hal='ssh vincenttian@hal.rescomp.berkeley.edu'
alias irc='ssh vincenttian@irc.housing.berkeley.edu'
alias www1='ssh vincenttian@dev-www1.rescomp.berkeley.edu'
alias www2='ssh vincenttian@dev-www2.rescomp.berkeley.edu'
alias www3='ssh vincenttian@dev-www3.rescomp.berkeley.edu'
alias www4='ssh vincenttian@dev-www4.rescomp.berkeley.edu'
alias www5='ssh vincenttian@dev-www5.rescomp.berkeley.edu'
alias www6='ssh vincenttian@dev-www6.rescomp.berkeley.edu'
alias www7='ssh vincenttian@dev-www7.rescomp.berkeley.edu'
alias www8='ssh vincenttian@dev-www8.rescomp.berkeley.edu'
alias www9='ssh vincenttian@dev-www9.rescomp.berkeley.edu'
alias www10='ssh vincenttian@dev-www10.rescomp.berkeley.edu'
alias www11='ssh vincenttian@dev-www11.rescomp.berkeley.edu'
alias www12='ssh vincenttian@dev-www12.rescomp.berkeley.edu'
alias www13='ssh vincenttian@dev-www13.rescomp.berkeley.edu'
 
source ~/.git-completion.sh
source ~/.git-prompt.sh
export PS1='\[\e[0;36m\][\u] \w:\[\e[0;31m\]$(__git_ps1 " (%s)") \[\e[00m\]\n\[\e[1;33m\]\342\230\200 >\[\e[0m\] '
export GOROOT="/usr/local/go"
export GOPATH="~/go"
export GOBIN="/usr/local/go/bin"
 
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH:$GOBIN"
 
# MacPorts Installer addition on 2013-02-01_at_02:07:27: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
 
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH="/Applications/Postgres.app/Contents/MacOS/bin:${PATH}"
export PATH
 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# quickly navigate your filesystem from the command-line
export MARKPATH=$HOME/.marks
function jump {
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark {
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark {
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l $MARKPATH | tr -s ' ' | cut -d ' ' -f 9- | sed s,$HOME,~,';1d;s/ -/\t-/;s/^/  /'
}
alias j="jump"

# from hn/item?id=6229291
function _jump {
    local curr=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$( \ls $MARKPATH )" -- $curr) )
}
complete -o default -o nospace -F _jump jump j unmark
