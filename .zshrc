# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git symfony2)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Prompt
#autoload -U promptinit ; promptinit
#prompt adam2

# Les alias marchent comme sous bash
alias ls='ls --color=auto'
alias l='ls -FXh --group-directories-first'
alias ll='ls -aAlF --group-directories-first'
alias lll='ll | less'
alias claer='clear'
alias agi='apt-get install'
alias agu='apt-get update && apt-get upgrade'
alias agr='apt-get remove'
alias agar='apt-get autoremove'
alias acs='apt-cache search'
alias sd='shutdown -hP now'
alias rb='shutdown -r now'
alias c='cat'
alias v='vim'
alias :q!='exit'
alias :q='exit'
alias :wq!='exit'
alias :wq='exit'
alias :wqa!='exit'
alias :wqa='exit'
# marre de se faire corriger par zsh ;)
alias xs='cd'
alias sl='ls'
# mplayer en plein framme buffer ;)
alias mplayerfb='mplayer -vo fbdev -vf scale=1024:768'
# Un grep avec des couleurs :
export GREP_COLOR=31
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias xte='nohup xterm &' # xte lancera un xterm qui ne se fermera pas si on ferme le terminal
# Pareil pour les variables d'environement :
#export http_proxy="http://hostname:8080/"
#export HTTP_PROXY=$http_proxy
# un VRAI éditeur de texte ;)
export EDITOR=/usr/bin/vim

export PATH=$PATH:/home/mathieu/local/bin:/sbin

# Complétion 
autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
# Crée un cache des complétion possibles
# très utile pour les complétion qui demandent beaucoup de temps
# comme la recherche d'un paquet aptitude install moz<tab>
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache
# des couleurs pour la complétion
# faites un kill -9 <tab><tab> pour voir :)
zmodload zsh/complist
setopt extendedglob
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"
 
# Correction des commandes
setopt correctall

# -----------------------------------------------------------------begin
# calculator - paste me into your .zshrc
# ----------------------------------------------------------------------

# Here are some quick calculators that output in integer
# hexadecimal, decimal, and binary.
zcalc ()  { print $(( ans = ${1:-ans} )) }
zcalch () { print $(( [#16] ans = ${1:-ans} )) }
zcalcd () { print $(( [#10] ans = ${1:-ans} )) }
zcalco () { print $(( [#8] ans = ${1:-ans} )) }
zcalcb () { print $(( [#2] ans = ${1:-ans} )) }

# A key binding that will allow you to quickly get into zcalc
bindkey -s '\C-xd' "zcalc \'"

# this last one lets you calculate the ascii value of a single character
zcalcasc () { print $(( [#16] ans = ##${1:-ans} )) }
# -------------------------------------------------------------------end

# Grails exports
export JAVA_HOME="/usr/java/jdk1.7.0_55"
export PATH="$PATH:/usr/local/heroku/bin:$JAVA_HOME/bin"
export MOZ_PLUGIN_PATH="/usr/lib64/flash-plugins"

# LUSTRE !!!!!
export LUSTRE_INSTALL=$HOME/Téléchargements/lustre-v4-III-b-linux64
export PATH=$LUSTRE_INSTALL/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/msoum/.gvm/bin/gvm-init.sh" ]] && source "/home/msoum/.gvm/bin/gvm-init.sh"

# added by travis gem
[ -f /home/msoum/.travis/travis.sh ] && source /home/msoum/.travis/travis.sh
