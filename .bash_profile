export PATH="/Library/PostgreSQL/9.2/bin:$PATH"

# Adding colors to terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

# virtualenv aliases
# http://blog.doughellmann.com/2010/01/virtualenvwrapper-tips-and-tricks.html
alias v='workon'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv --no-site-packages'
alias v.mk_withsitepackages='mkvirtualenv'
alias v.rm='rmvirtualenv'
alias v.switch='workon'
alias v.add2virtualenv='add2virtualenv'
alias v.cdsitepackages='cdsitepackages'
alias v.cd='cdvirtualenv'
alias v.lssitepackages='lssitepackages'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Your previous /Users/vincenttian/.bash_profile file was backed up as /Users/vincenttian/.bash_profile.macports-saved_2013-10-13_at_18:13:53
##

# MacPorts Installer addition on 2013-10-13_at_18:13:53: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

source ~/.bashrc
source ~/.git-completion.sh
source ~/.git-prompt.sh
export PS1='\[\e[0;36m\][\u] \w:\[\e[0;31m\]$(__git_ps1 " (%s)") \[\e[00m\]\n\[\e[1;33m\]\342\230\200 >\[\e[0m\] '
export GOROOT="/usr/local/go"
export GOPATH="~/go"
export GOBIN="/usr/local/go/bin"
 
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH:$GOBIN"
